import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
        automaticallyImplyLeading: false, // Remove back button since it's in bottom nav
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Search Input Field
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search for products...',
                prefixIcon: const Icon(Icons.search),
                suffixIcon: _searchQuery.isNotEmpty
                    ? IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: () {
                          _searchController.clear();
                          setState(() {
                            _searchQuery = '';
                          });
                        },
                      )
                    : null,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                filled: true,
                fillColor: Theme.of(context).colorScheme.surface,
              ),
              onChanged: (value) {
                setState(() {
                  _searchQuery = value;
                });
              },
            ),
            
            const SizedBox(height: 20),
            
            // Search Results Area
            Expanded(
              child: _searchQuery.isEmpty
                  ? _buildSearchSuggestions()
                  : _buildSearchResults(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchSuggestions() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Popular Searches',
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [
            _buildSuggestionChip('Electronics'),
            _buildSuggestionChip('Clothing'),
            _buildSuggestionChip('Books'),
            _buildSuggestionChip('Home & Garden'),
            _buildSuggestionChip('Sports'),
            _buildSuggestionChip('Beauty'),
          ],
        ),
        const SizedBox(height: 30),
        Text(
          'Recent Searches',
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        _buildRecentSearchItem('Smartphone'),
        _buildRecentSearchItem('Running shoes'),
        _buildRecentSearchItem('Coffee maker'),
      ],
    );
  }

  Widget _buildSuggestionChip(String text) {
    return GestureDetector(
      onTap: () {
        _searchController.text = text;
        setState(() {
          _searchQuery = text;
        });
      },
      child: Chip(
        label: Text(text),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        labelStyle: TextStyle(
          color: Theme.of(context).colorScheme.onPrimaryContainer,
        ),
      ),
    );
  }

  Widget _buildRecentSearchItem(String text) {
    return ListTile(
      leading: const Icon(Icons.history),
      title: Text(text),
      trailing: IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          // Remove from recent searches
        },
      ),
      onTap: () {
        _searchController.text = text;
        setState(() {
          _searchQuery = text;
        });
      },
    );
  }

  Widget _buildSearchResults() {
    // Simulated search results
    List<String> mockResults = [
      'iPhone 15 Pro',
      'Samsung Galaxy S24',
      'MacBook Air',
      'AirPods Pro',
      'iPad Air',
    ].where((item) => item.toLowerCase().contains(_searchQuery.toLowerCase())).toList();

    if (mockResults.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.search_off,
              size: 64,
              color: Theme.of(context).colorScheme.outline,
            ),
            const SizedBox(height: 16),
            Text(
              'No results found for "$_searchQuery"',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: Theme.of(context).colorScheme.outline,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Try adjusting your search terms',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).colorScheme.outline,
              ),
            ),
          ],
        ),
      );
    }

    return ListView.builder(
      itemCount: mockResults.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: const Icon(Icons.shopping_bag),
          title: Text(mockResults[index]),
          subtitle: Text('Product description for ${mockResults[index]}'),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () {
            // Navigate to product details
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Selected: ${mockResults[index]}'),
              ),
            );
          },
        );
      },
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}
