﻿using Microsoft.AspNet.SignalR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CodeShare.Frontend.Hubs
{
    public class HistoryHub : Hub
    {
        public static void Show()
        {
            IHubContext context = GlobalHost.ConnectionManager.GetHubContext<HistoryHub>();
            context.Clients.All.displayHistoryShow();
        }
    }
}