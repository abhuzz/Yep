//
//  FeedCellLayout.swift
//  Yep
//
//  Created by nixzhu on 15/12/17.
//  Copyright © 2015年 Catch Inc. All rights reserved.
//

import Foundation

struct FeedCellLayout {

    typealias Update = (layout: FeedCellLayout) -> Void
    typealias Cache = (layout: FeedCellLayout?, update: Update)

    struct BasicLayout {

        let avatarImageViewFrame: CGRect
        let nicknameLabelFrame: CGRect
        let skillButtonFrame: CGRect

        let messageTextViewFrame: CGRect

        let leftBottomLabelFrame: CGRect
        let messageCountLabelFrame: CGRect
        let discussionImageViewFrame: CGRect

        init(avatarImageViewFrame: CGRect,
            nicknameLabelFrame: CGRect,
            skillButtonFrame: CGRect,
            messageTextViewFrame: CGRect,
            leftBottomLabelFrame: CGRect,
            messageCountLabelFrame: CGRect,
            discussionImageViewFrame: CGRect) {
                self.avatarImageViewFrame = avatarImageViewFrame
                self.nicknameLabelFrame = nicknameLabelFrame
                self.skillButtonFrame = skillButtonFrame

                self.messageTextViewFrame = messageTextViewFrame

                self.leftBottomLabelFrame = leftBottomLabelFrame
                self.messageCountLabelFrame = messageCountLabelFrame
                self.discussionImageViewFrame = discussionImageViewFrame
        }
    }
    let basicLayout: BasicLayout

    struct BiggerImageLayout {
        let biggerImageViewFrame: CGRect

        init(biggerImageViewFrame: CGRect) {
            self.biggerImageViewFrame = biggerImageViewFrame
        }
    }
    var biggerImageLayout: BiggerImageLayout?

    struct NormalImagesLayout {

        let imageView1Frame: CGRect
        let imageView2Frame: CGRect
        let imageView3Frame: CGRect
    }
    var normalImagesLayout: NormalImagesLayout?

    struct AnyImagesLayout {

        let mediaCollectionView: CGRect
    }
    var anyImagesLayout: AnyImagesLayout?

    init(basicLayout: BasicLayout) {
        self.basicLayout = basicLayout
    }
}

