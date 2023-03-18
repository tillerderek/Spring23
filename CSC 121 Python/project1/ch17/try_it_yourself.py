# 17-1
# import requests

# from plotly.graph_objs import Bar
# from plotly import offline

# # Make an API call and store the response.
# url = 'https://api.github.com/search/repositories?q=language:perl&sort=stars'
# headers = {'Accept': 'application/vnd.github.v3+json'}
# r = requests.get(url, headers=headers)
# print(f"Status code: {r.status_code}")

# # Process results.
# response_dict = r.json()
# repo_dicts = response_dict['items']
# repo_links, stars, labels = [], [], []
# for repo_dict in repo_dicts:
#     repo_name = repo_dict['name']
#     repo_url = repo_dict['html_url']
#     repo_link = f"<a href='{repo_url}'>{repo_name}</a>"
#     repo_links.append(repo_link)

#     stars.append(repo_dict['stargazers_count'])

#     owner = repo_dict['owner']['login']
#     description = repo_dict['description']
#     label = f"{owner}<br />{description}"
#     labels.append(label)


# # Make visualization.
# data = [{
#     'type': 'bar',
#     'x': repo_links,
#     'y': stars,
#     'hovertext': labels,
#     'marker': {
#         'color': 'rgb(60, 100, 150)',
#         'line': {'width': 1.5, 'color': 'rgb(25, 25, 25)'}
#     },
#     'opacity': 0.6,
# }]

# my_layout = {
#     'title': 'Most-Starred Perl Projects on GitHub',
#     'titlefont': {'size': 28},
#     'xaxis': {
#         'title': 'Repository',
#         'titlefont': {'size': 24},
#         'tickfont': {'size': 14},
#     },
#     'yaxis': {
#         'title': 'Stars',
#         'titlefont': {'size': 24},
#         'tickfont': {'size': 14},
#     },

# }

# fig = {'data': data, 'layout': my_layout}
# offline.plot(fig, filename='js_repos.html')

# 17-2
# from operator import itemgetter

# import requests
# from plotly.graph_objs import Bar
# from plotly import offline

# # Make an API call and store the response.
# url = 'https://hacker-news.firebaseio.com/v0/topstories.json'
# r = requests.get(url)
# print(f"Status code: {r.status_code}")

# # Process submission info
# submission_ids = r.json()
# submission_dicts = []
# for submission_id in submission_ids[:15]:
#     # Make a separate API call for each submission.
#     url = f"https://hacker-news.firebaseio.com/v0/item/{submission_id}.json"
#     r = requests.get(url)
#     print(f"id: {submission_id}\tstatus: {r.status_code}")
#     response_dict = r.json()

#     # Build a dictionary for each article.
#     submission_dict = {
#         'title': response_dict['title'],
#         'hn_link': f"http://news.ycombinator.com/item?id={submission_id}",
#         'comments': response_dict['descendants'],
#     }
#     submission_dicts.append(submission_dict)

# submission_dicts = sorted(submission_dicts, key=itemgetter('comments'),
#                           reverse=True)

# for submission_dict in submission_dicts:
#     print(f"\nTitle: {submission_dict['title']}")
#     print(f"Discussion link: {submission_dict['hn_link']}")
#     print(f"Comments: {submission_dict['comments']}")

# # build lists to plot
# # Build lists to plot
# titles = [submission_dict['title'] for submission_dict in submission_dicts]
# hn_links = [submission_dict['hn_link'] for submission_dict in submission_dicts]
# disc_links = [f"<a href='{hn_link}'>{title[:20]}</a>" for title,
#               hn_link in zip(titles, hn_links)]
# num_comments = [submission_dict['comments']
#                 for submission_dict in submission_dicts]

# # Make visualization.
# data = [{
#     'type': 'bar',
#     'x': disc_links,
#     'y': num_comments,
#     'hovertext': titles,
#     'marker': {
#         'color': 'rgb(60, 100, 150)',
#         'line': {'width': 1.5, 'color': 'rgb(25, 25, 25)'}
#     },
#     'opacity': 0.5,
# }]

# my_layout = {
#     'title': 'Most-discussed articles on Hacker News',
#     'titlefont': {'size': 28},
#     'xaxis': {
#         'title': 'Article',
#         'titlefont': {'size': 24},
#         'tickfont': {'size': 14},
#     },
#     'yaxis': {
#         'title': 'Number of Comments',
#         'titlefont': {'size': 24},
#         'tickfont': {'size': 14},
#     },

# }

# fig = {'data': data, 'layout': my_layout}
# offline.plot(fig, filename='hn_discussions.html')

# 17-3
# import requests

# from plotly.graph_objs import Bar
# from plotly import offline


# def api_response():
#     """Call api and get response"""
#     url = 'https://api.github.com/search/repositories?q=language:python&sort=stars'
#     headers = {'Accept': 'application/vnd.github.v3+json'}
#     r = requests.get(url, headers=headers)
#     return r


# def get_repo_dicts(r):
#     """Create dicts of most popular repos."""
#     response_dict = r.json()
#     repo_dicts = response_dict['items']
#     return repo_dicts


# def plotting_data(repo_dicts):
#     """Get plotting data."""
#     repo_links, stars, labels = [], [], []
#     for repo_dict in repo_dicts:
#         repo_name = repo_dict['name']
#         repo_url = repo_dict['html_url']
#         repo_link = f"<a href='{repo_url}'>{repo_name}</a>"
#         repo_links.append(repo_link)

#         stars.append(repo_dict['stargazers_count'])

#         owner = repo_dict['owner']['login']
#         description = repo_dict['description']
#         label = f"{owner}<br />{description}"
#         labels.append(label)

#     return repo_links, stars, labels


# def create_graph(repo_links, stars, labels):
#     """Visualization / graph of data."""
#     data = [{
#         'type': 'bar',
#         'x': repo_links,
#         'y': stars,
#         'hovertext': labels,
#         'marker': {
#             'color': 'rgb(60, 100, 150)',
#             'line': {'width': 1.5, 'color': 'rgb(25, 25, 25)'}
#         },
#         'opacity': 0.6,
#     }]

#     my_layout = {
#         'title': 'Most-Starred Python Projects on GitHub',
#         'titlefont': {'size': 28},
#         'xaxis': {
#             'title': 'Repository',
#             'titlefont': {'size': 24},
#             'tickfont': {'size': 14},
#         },
#         'yaxis': {
#             'title': 'Stars',
#             'titlefont': {'size': 24},
#             'tickfont': {'size': 14},
#         },

#     }

#     fig = {'data': data, 'layout': my_layout}
#     offline.plot(fig, filename='python_repos.html')


# if __name__ == '__main__':
#     r = api_response()
#     repo_dicts = get_repo_dicts(r)
#     repo_links, stars, labels = plotting_data(repo_dicts)
#     create_graph(repo_links, stars, labels)

#17-4
