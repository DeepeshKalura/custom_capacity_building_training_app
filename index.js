// Required modules
const express = require('express');
const bodyParser = require('body-parser');

// Initialize the app
const app = express();
app.use(bodyParser.json());

// Store the forum data
let discussions = [];

// Get all discussions
app.get('/discussions', (req, res) => {
    res.json(discussions);
});

// Get a specific discussion by ID
app.get('/discussions/:id', (req, res) => {
    const id = req.params.id;
    const discussion = discussions.find((item) => item.id === id);
    if (discussion) {
        res.json(discussion);
    } else {
        res.status(404).json({ error: 'Discussion not found' });
    }
});

// Create a new discussion
app.post('/discussions', (req, res) => {
    const discussion = req.body;
    discussion.id = generateId(); // Function to generate a unique ID
    discussions.push(discussion);
    res.status(201).json(discussion);
});

// Update an existing discussion
app.put('/discussions/:id', (req, res) => {
    const id = req.params.id;
    const updatedDiscussion = req.body;
    const discussionIndex = discussions.findIndex((item) => item.id === id);
    if (discussionIndex !== -1) {
        discussions[discussionIndex] = {
            id,
            ...updatedDiscussion
        };
        res.json(discussions[discussionIndex]);
    } else {
        res.status(404).json({ error: 'Discussion not found' });
    }
});

// Delete a discussion
app.delete('/discussions/:id', (req, res) => {
    const id = req.params.id;
    const discussionIndex = discussions.findIndex((item) => item.id === id);
    if (discussionIndex !== -1) {
        const deletedDiscussion = discussions[discussionIndex];
        discussions.splice(discussionIndex, 1);
        res.json(deletedDiscussion);
    } else {
        res.status(404).json({ error: 'Discussion not found' });
    }
});

// Start the server
app.listen(3000, () => {
    console.log('Server is running on port 3000');
});
