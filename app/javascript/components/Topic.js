import { topicReference } from '@babel/types";
import { comment } from 'postcss-selector-parser';
import React from 'react';

const Topic =(props) => {
    const { Topic, comments } = props;

    // const isFLagged = (flagged) => {
    //     if(flagged)
    //     return 'red'
    // } else {
    //     return 'black'
    // }
    // return flagged ? "red" : "black";
//};

    const renderComments = () => {
        return comments.map(comment) => {
        return (
            <div style={{color: isFLagged(comment.flagged ? "red" : "black" ) }}>
                <h1>{comment.body}</h1>
            </div>
            );
        });
    };
    return (
        <div>
            <h1>{topic.name}</h1>
            <a href={1/topics/${topic.id/comments/new`}}
            {renderComments()}
        </div>
    );
};

export default Topic;


// const isFLagged = (flagged) => {
//     if(flagged)
//     return 'red'
// } else {
//     return 'black'
// }
}