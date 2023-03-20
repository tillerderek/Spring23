#The following programs print, and visualize the most popular python repos on 
#github.

# import requests

# # Make an API call and store the response.
# url = 'https://api.github.com/search/repositories?q=language:python&sort=stars'
# headers = {'Accept': 'application/vnd.github.v3+json'}
# r = requests.get(url, headers=headers)
# print(f"Status code: {r.status_code}")

# #store API response in a variable.
# response_dict = r.json()

# #process results.
# print(response_dict.keys())

# import requests

# # Make an API call and store the response.
# url = 'https://api.github.com/search/repositories?q=language:python&sort=stars'
# headers = {'Accept': 'application/vnd.github.v3+json'}
# r = requests.get(url, headers=headers)
# print(f"Status code: {r.status_code}")

# #store API response in a variable.
# response_dict = r.json()
# print(f"Total repositories: {response_dict['total_count']}")

# # Explore information about the repositories.
# repo_dicts = response_dict['items']
# print(f"Repositories returned: {len(repo_dicts)}")

# # Examine the first repository.
# repo_dict = repo_dicts[0]
# print(f"\nKeys: {len(repo_dict)}")
# for key in sorted(repo_dict.keys()):
#     print(key)

# import requests

# # Make an API call and store the response.
# url = 'https://api.github.com/search/repositories?q=language:python&sort=stars'
# headers = {'Accept': 'application/vnd.github.v3+json'}
# r = requests.get(url, headers=headers)
# print(f"Status code: {r.status_code}")

# #store API response in a variable.
# response_dict = r.json()
# print(f"Total repositories: {response_dict['total_count']}")

# # Explore information about the repositories.
# repo_dicts = response_dict['items']
# print(f"Repositories returned: {len(repo_dicts)}")

# # Examine the first repository.
# repo_dict = repo_dicts[0]

# print("\nSelected information about each repository:")
# print(f"Name: {repo_dict['name']}")
# print(f"Owner: {repo_dict['owner']['login']}")
# print(f"Stars: {repo_dict['stargazers_count']}")
# print(f"Repository: {repo_dict['html_url']}")
# print(f"Created: {repo_dict['created_at']}")
# print(f"Updated: {repo_dict['updated_at']}")
# print(f"Description: {repo_dict['description']}")

# import requests

# # Make an API call and store the response.
# url = 'https://api.github.com/search/repositories?q=language:python&sort=stars'
# headers = {'Accept': 'application/vnd.github.v3+json'}
# r = requests.get(url, headers=headers)
# print(f"Status code: {r.status_code}")

# #store API response in a variable.
# response_dict = r.json()
# print(f"Total repositories: {response_dict['total_count']}")

# # Explore information about the repositories.
# repo_dicts = response_dict['items']
# print(f"Repositories returned: {len(repo_dicts)}")

# # Examine the first repository.
# repo_dict = repo_dicts[0]
# for repo_dict in repo_dicts:
#     print(f"Name: {repo_dict['name']}")
#     print(f"Owner: {repo_dict['owner']['login']}")
#     print(f"Stars: {repo_dict['stargazers_count']}")
#     print(f"Repository: {repo_dict['html_url']}")
#     print(f"Created: {repo_dict['created_at']}")
#     print(f"Updated: {repo_dict['updated_at']}")
#     print(f"Description: {repo_dict['description']}")

#17-3 modular
import requests

from plotly.graph_objs import Bar
from plotly import offline


def api_response():
    """Call api and get response"""
    url = 'https://api.github.com/search/repositories?q=language:python&sort=stars'
    headers = {'Accept': 'application/vnd.github.v3+json'}
    r = requests.get(url, headers=headers)
    return r


def get_repo_dicts(r):
    """Create dicts of most popular repos."""
    response_dict = r.json()
    repo_dicts = response_dict['items']
    return repo_dicts


def plotting_data(repo_dicts):
    """Get plotting data."""
    repo_links, stars, labels = [], [], []
    for repo_dict in repo_dicts:
        repo_name = repo_dict['name']
        repo_url = repo_dict['html_url']
        repo_link = f"<a href='{repo_url}'>{repo_name}</a>"
        repo_links.append(repo_link)

        stars.append(repo_dict['stargazers_count'])

        owner = repo_dict['owner']['login']
        description = repo_dict['description']
        label = f"{owner}<br />{description}"
        labels.append(label)

    return repo_links, stars, labels


def create_graph(repo_links, stars, labels):
    """Visualization / graph of data."""
    data = [{
        'type': 'bar',
        'x': repo_links,
        'y': stars,
        'hovertext': labels,
        'marker': {
            'color': 'rgb(60, 100, 150)',
            'line': {'width': 1.5, 'color': 'rgb(25, 25, 25)'}
        },
        'opacity': 0.6,
    }]

    my_layout = {
        'title': 'Most-Starred Python Projects on GitHub',
        'titlefont': {'size': 28},
        'xaxis': {
            'title': 'Repository',
            'titlefont': {'size': 24},
            'tickfont': {'size': 14},
        },
        'yaxis': {
            'title': 'Stars',
            'titlefont': {'size': 24},
            'tickfont': {'size': 14},
        },

    }

    fig = {'data': data, 'layout': my_layout}
    offline.plot(fig, filename='python_repos.html')


if __name__ == '__main__':
    r = api_response()
    repo_dicts = get_repo_dicts(r)
    repo_links, stars, labels = plotting_data(repo_dicts)
    create_graph(repo_links, stars, labels)


