//
//  Cached Downloads Folder Info Box.swift
//  Cork
//
//  Created by David Bureš on 05.04.2023.
//

import SwiftUI

struct CachedDownloadsFolderInfoBox: View
{
    @EnvironmentObject var appState: AppState

    var body: some View
    {
        GroupBox
        {
            VStack
            {
                HStack
                {
                    GroupBoxHeadlineGroup(
                        image: "square.and.arrow.down.on.square",
                        title: "start-page.cached-downloads-\(appState.cachedDownloadsFolderSize.formatted(.byteCount(style: .file)))",
                        mainText: "start-page.cached-downloads.description"
                    )

                    Spacer()

                    Button
                    {
                        appState.isShowingFastCacheDeletionMaintenanceView = true
                    } label: {
                        Text("start-page.cached-downloads.action")
                    }
                    .padding(.trailing, 7)
                }
            }
        }
    }
}
