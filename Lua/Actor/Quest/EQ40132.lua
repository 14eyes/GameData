require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40132 = class("Quest40132", QuestActorProxy)
Quest40132.defaultAlias = "Quest40132"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest40132:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest40132:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4013201"] = self.OnSubStart4013201,
        ["4013209"] = self.OnSubStart4013209,
        ["4013202"] = self.OnSubStart4013202,
        ["4013213"] = self.OnSubStart4013213,
        ["4013210"] = self.OnSubStart4013210,
        ["4013211"] = self.OnSubStart4013211,
        ["4013217"] = self.OnSubStart4013217,
        ["4013212"] = self.OnSubStart4013212,
        ["4013203"] = self.OnSubStart4013203,
        ["4013218"] = self.OnSubStart4013218,
        ["4013204"] = self.OnSubStart4013204,
        ["4013219"] = self.OnSubStart4013219,
        ["4013205"] = self.OnSubStart4013205,
        ["4013216"] = self.OnSubStart4013216,
        ["4013215"] = self.OnSubStart4013215,
        ["4013214"] = self.OnSubStart4013214,
        ["4013206"] = self.OnSubStart4013206,
        ["4013207"] = self.OnSubStart4013207,
        ["4013208"] = self.OnSubStart4013208
    }
end

function Quest40132:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4013201"] = self.OnSubFinish4013201,
        ["4013209"] = self.OnSubFinish4013209,
        ["4013202"] = self.OnSubFinish4013202,
        ["4013213"] = self.OnSubFinish4013213,
        ["4013210"] = self.OnSubFinish4013210,
        ["4013211"] = self.OnSubFinish4013211,
        ["4013217"] = self.OnSubFinish4013217,
        ["4013212"] = self.OnSubFinish4013212,
        ["4013203"] = self.OnSubFinish4013203,
        ["4013218"] = self.OnSubFinish4013218,
        ["4013204"] = self.OnSubFinish4013204,
        ["4013219"] = self.OnSubFinish4013219,
        ["4013205"] = self.OnSubFinish4013205,
        ["4013216"] = self.OnSubFinish4013216,
        ["4013215"] = self.OnSubFinish4013215,
        ["4013214"] = self.OnSubFinish4013214,
        ["4013206"] = self.OnSubFinish4013206,
        ["4013207"] = self.OnSubFinish4013207,
        ["4013208"] = self.OnSubFinish4013208
    }
end

function Quest40132:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["4013204"] = self.OnSubFailed4013204}
end

function Quest40132:Start()
    print("Start")
end

function Quest40132:OnDestroy()
    print("OnDestroy")
end

function Quest40132:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40132:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40132:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc30435Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30435Data.alias, 1084)
    this:SafeDestroyQuestNpc(npcs.Npc1035Data.alias, 1084)
    this:SafeDestroyQuestNpc(npcs.Npc1035Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1073Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1081Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30438Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1082Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1082Data.alias, 1084)
    this:SafeDestroyQuestNpc(npcs.Npc2604Data.alias, 1084)
    this:SafeDestroyQuestNpc(npcs.Npc2604Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1047Data.alias, 1084)
    this:SafeDestroyQuestNpc(npcs.Npc1047Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30452Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30453Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13361Data.alias, 3)
    this:LightNotifyTo(npcs.Npc5001Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q4013201Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4013202Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4013206Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4013207Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4013208Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4013213Trigger", 3, false)
    this:DestroyNpcTrigger("Q4013203N1082Trigger")
    this:DestroyNpcTrigger("Q4013204N1082Trigger")
    this:DestroyNpcTrigger("Q4013210N1005Trigger")
    this:DestroyNpcTrigger("Q4013212N1035Trigger")
    actorMgr:DestroyEntityActor("Q4013218Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4013219Trigger", 3, false)
end

function Quest40132:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40132:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, n, arg5, 0.5, 2)
end

function Quest40132:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest40132:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        print("FinishSubQuest4013211")
        actorUtils.FinishQuestID(false, 4013211)
    elseif arg1 == 2 then
        print("FinishSubQuest4013217")
        actorUtils.FinishQuestID(false, 4013217)
        local v = this
        local v2 = v
        local unbindQuestNpcFromPlatform = v.UnbindQuestNpcFromPlatform
        local n = 1025
        local n2 = 40132
        local tbl = {x = 3537.896, y = 483.5033, z = 4559.175}
        local tbl2 = {}
        local n3 = 0
        local n4 = 0
        tbl2[1] = 0
        tbl2[2] = n3
        tbl2[3] = n4
        unbindQuestNpcFromPlatform(v2, n, n2, tbl, tbl2)
        local v3 = this
        local v4 = v3
        local func = v3.UnbindQuestNpcFromPlatform
        local n5 = 1026
        local n6 = 40132
        local tbl3 = {x = 3537.896, y = 483.5033, z = 4559.175}
        local tbl4 = {}
        local n7 = 0
        local n8 = 0
        tbl4[1] = 0
        tbl4[2] = n7
        tbl4[3] = n8
        func(v4, n5, n6, tbl3, tbl4)
        local v5 = this
        local v6 = v5
        local unbindQuestNpcFromPlatform2 = v5.UnbindQuestNpcFromPlatform
        local n9 = 1005
        local n10 = 40132
        local tbl5 = {x = 3537.501, y = 483.5033, z = 4558.74}
        local tbl6 = {}
        local n11 = 0
        local n12 = 0
        tbl6[1] = 0
        tbl6[2] = n11
        tbl6[3] = n12
        unbindQuestNpcFromPlatform2(v6, n9, n10, tbl5, tbl6)
        this:UnbindQuestNpcFromPlatform(1082, 40132, {x = 3541.198, y = 483.5033, z = 4553.046}, {x = 0, y = 220, z = 0})
        local v7 = this
        local v8 = v7
        local unbindQuestNpcFromPlatform3 = v7.UnbindQuestNpcFromPlatform
        local n13 = 2604
        local n14 = 40132
        local tbl7 = {x = 3538.713, y = 483.5033, z = 4550.572}
        local tbl8 = {}
        local n15 = 0
        local n16 = 0
        tbl8[1] = 0
        tbl8[2] = n15
        tbl8[3] = n16
        unbindQuestNpcFromPlatform3(v8, n13, n14, tbl7, tbl8)
        local v9 = this
        local v10 = v9
        local unbindQuestNpcFromPlatform4 = v9.UnbindQuestNpcFromPlatform
        local n17 = 1047
        local n18 = 40132
        local tbl9 = {x = 3538.59, y = 483.5033, z = 4551.447}
        local tbl10 = {}
        local n19 = 0
        local n20 = 0
        tbl10[1] = 0
        tbl10[2] = n19
        tbl10[3] = n20
        unbindQuestNpcFromPlatform4(v10, n17, n18, tbl9, tbl10)
        this:UnbindQuestNpcFromPlatform(30435, 40132, {x = 3542.255, y = 483.5033, z = 4552.244}, {x = 0, y = 240, z = 0})
        local v11 = this
        local v12 = v11
        local unbindQuestNpcFromPlatform5 = v11.UnbindQuestNpcFromPlatform
        local n21 = 1035
        local n22 = 40132
        local tbl11 = {x = 3536.934, y = 483.5033, z = 4552.729}
        local tbl12 = {}
        local n23 = 0
        local n24 = 0
        tbl12[1] = 0
        tbl12[2] = n23
        tbl12[3] = n24
        unbindQuestNpcFromPlatform5(v12, n21, n22, tbl11, tbl12)
    elseif arg1 == 3 then
        print("FinishSubQuest4013214")
        actorUtils.FinishQuestID(false, 4013214)
    elseif arg1 == 4 then
        print("FinishSubQuest4013215")
        actorUtils.FinishQuestID(false, 4013215)
    elseif arg1 == 5 then
        print("FinishSubQuest4013216")
        actorUtils.FinishQuestID(false, 4013216)
    end
end

function Quest40132:OnSubStart4013201(arg1)
    print("OnSubStart4013201")
    actorUtils.FinishQuestID(false, 4013201)
end

function Quest40132:OnSubFinish4013201(arg1)
    print("OnSubFinish4013201")
    this:NarratorOnlyTaskByData(datas.NarratorWithId)
end

function Quest40132:OnSubStart4013209(arg1)
    print("OnSubStart4013209")
    this:CreateQuestNpc(arg1, npcs.Npc30435Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc30435Data.alias):DoFreeStyle(1110, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc1081Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc1081Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc30438Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc30438Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc30452Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc30452Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc30453Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc30453Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q4013201Trigger", "Actor/Gadget/Q4013201Trigger", 70900002, 0, {x = 3421.328, y = 450.284, z = 4459.596}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc30435Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30438Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1081Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30452Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30453Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40132:OnSubFinish4013209(arg1)
    print("OnSubFinish4013209")
    this:GetQuestNpcActor(npcs.Npc30435Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc30438Data.alias):DisableInteeHeadCtrl(false)
    this:SafeDestroyQuestNpc(npcs.Npc30435Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30438Data.alias, 3)
    this:ActorDestroy("Q4013201Trigger")
    this:ClearNarratorTask()
    this:ActionSafeCall(function(arg1)
        actorUtils.ShowContext("FilmfestMainPage")
    end)
end

function Quest40132:OnSubStart4013202(arg1)
    print("OnSubStart4013202")
    this:GetQuestNpcActor(npcs.Npc1081Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc1082Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc1082Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc30452Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc30453Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q4013202Trigger", "Actor/Gadget/Q4013202Trigger", 70900002, 0, {x = 3533.723, y = 483.503, z = 4545.694}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    this:NotifyTo(npcs.Npc5001Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc1081Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30452Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30453Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40132:OnSubFinish4013202(arg1)
    print("OnSubFinish4013202")
    this:TransmitPlayerWithDialogTextByQuestId(4013202, 1, datas.DialogsId, 0.5)
    this:ActorDestroy("Q4013202Trigger")
end

function Quest40132:OnSubStart4013213(arg1)
    print("OnSubStart4013213")
    actorMgr:CreateActorWithPos("Q4013213Trigger", "Actor/Gadget/Q4013213Trigger", 70900002, 0, points.TPos_Q4013213Trigger.pos, points.TPos_Q4013213Trigger.rot, true, false, 3)
end

function Quest40132:OnSubFinish4013213(arg1)
    print("OnSubFinish4013213")
    this:ActorDestroy("Q4013213Trigger")
end

function Quest40132:OnSubStart4013210(arg1)
    print("OnSubStart4013210")
    local groupEntityCreateTask = curtainUtils.CreateGroupEntityCreateTask({{groupId = 133401706, configId = 706001}})
    this:ShowBlackScreen(0, 3, 0, nil, function(arg1)
        this:ShowBlackScreen(0, 2, 0, nil, nil, nil, "", false, true)
        this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.PaimonData.id, 4013210, 0, 15, 1, true)
    end, groupEntityCreateTask, "", false, true)
end

function Quest40132:OnSubFinish4013210(arg1)
    print("OnSubFinish4013210")
    this:TransmitPlayerWithDialogTextByQuestId(4013210, 1, datas.DialogsId, 0.5)
    this:DestroyQuestNpcActor(npcs.Npc1082Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.PaimonData.alias, 3)
end

function Quest40132:OnSubStart4013211(arg1)
    print("OnSubStart4013211")
end

function Quest40132:OnSubFinish4013211(arg1)
    print("OnSubFinish4013211")
end

function Quest40132:OnSubStart4013217(arg1)
    print("OnSubStart4013217")
end

function Quest40132:OnSubFinish4013217(arg1)
    print("OnSubFinish4013217")
end

function Quest40132:OnSubStart4013212(arg1)
    print("OnSubStart4013212")
    this:ActionSafeCall(function(arg1)
        this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc1035Data.id, 4013212, 0, 15, 1, true)
    end)

    this:GetQuestNpcActor(npcs.Npc1081Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc30452Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc30453Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:NotifyTo(npcs.Npc5001Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc1081Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30452Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30453Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40132:OnSubFinish4013212(arg1)
    print("OnSubFinish4013212")
    this:LightNotifyTo(npcs.Npc5001Data.alias, 0, true)
    this:SafeDestroyQuestNpc(npcs.Npc1035Data.alias, 3)
end

function Quest40132:OnSubStart4013203(arg1)
    print("OnSubStart4013203")
    this:GetQuestNpcActor(npcs.Npc1081Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc1082Data.id, 4013203, 0, 40, 1, true)
    this:GetQuestNpcActor(npcs.Npc30452Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc30453Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1081Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30452Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30453Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40132:OnSubFinish4013203(arg1)
    print("OnSubFinish4013203")
    this:SafeDestroyQuestNpc(npcs.Npc1082Data.alias, 1084)
end

function Quest40132:OnSubStart4013218(arg1)
    print("OnSubStart4013218")
    this:CreateQuestNpc(arg1, npcs.Npc1035Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc1035Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1081Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc2604Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc2604Data.alias):DoFreeStyle(1130, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc1047Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc1047Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc30452Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc30453Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1081Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30452Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30453Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1035Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc2604Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1047Data.alias):DisableInteeHeadCtrl(true)
    actorMgr:CreateActorWithPos("Q4013218Trigger", "Actor/Gadget/Q4013218Trigger", 70900002, 0, points.TPos_Q4013218Trigger.pos, points.TPos_Q4013218Trigger.rot, true, false, 3)
end

function Quest40132:OnSubFinish4013218(arg1)
    print("OnSubFinish4013218")
    this:ActorDestroy("Q4013218Trigger")
end

function Quest40132:OnSubStart4013204(arg1)
    print("OnSubStart4013204")
    this:GetQuestNpcActor(npcs.Npc1035Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1081Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1082Data.id, 4013204, 0, 5, 1)
    this:GetQuestNpcActor(npcs.Npc2604Data.alias):DoFreeStyle(1130, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1047Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc30452Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc30453Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1081Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30452Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30453Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1035Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc2604Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1047Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40132:OnSubFinish4013204(arg1)
    print("OnSubFinish4013204")
    this:GetQuestNpcActor(npcs.Npc1035Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc2604Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc1047Data.alias):DisableInteeHeadCtrl(false)
    this:SafeDestroyQuestNpc(npcs.Npc1035Data.alias, 1084)
    this:SafeDestroyQuestNpc(npcs.Npc1082Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2604Data.alias, 1084)
    this:SafeDestroyQuestNpc(npcs.Npc1047Data.alias, 1084)
end

function Quest40132:OnSubFailed4013204(arg1)
    print("OnSubFailed4013204")
    this:DestroyNpcTrigger("Q4013204N1082Trigger")
end

function Quest40132:OnSubStart4013219(arg1)
    print("OnSubStart4013219")
    this:CreateQuestNpc(arg1, npcs.Npc1073Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc1073Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1081Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc30452Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc30453Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1081Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30452Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30453Data.alias):DisableInteeHeadCtrl(true)
    actorMgr:CreateActorWithPos("Q4013219Trigger", "Actor/Gadget/Q4013219Trigger", 70900002, 0, points.TPos_Q4013219Trigger.pos, points.TPos_Q4013219Trigger.rot, true, false, 3)
end

function Quest40132:OnSubFinish4013219(arg1)
    print("OnSubFinish4013219")
    this:ActorDestroy("Q4013219Trigger")
end

function Quest40132:OnSubStart4013205(arg1)
    print("OnSubStart4013205")
    this:GetQuestNpcActor(npcs.Npc1073Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1081Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc30452Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc30453Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1081Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30452Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30453Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40132:OnSubFinish4013205(arg1)
    print("OnSubFinish4013205")
end

function Quest40132:OnSubStart4013216(arg1)
    print("OnSubStart4013216")
end

function Quest40132:OnSubFinish4013216(arg1)
    print("OnSubFinish4013216")
end

function Quest40132:OnSubStart4013215(arg1)
    print("OnSubStart4013215")
end

function Quest40132:OnSubFinish4013215(arg1)
    print("OnSubFinish4013215")
end

function Quest40132:OnSubStart4013214(arg1)
    print("OnSubStart4013214")
end

function Quest40132:OnSubFinish4013214(arg1)
    print("OnSubFinish4013214")
end

function Quest40132:OnSubStart4013206(arg1)
    print("OnSubStart4013206")
    this:GetQuestNpcActor(npcs.Npc1073Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1081Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc30452Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc30453Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q4013206Trigger", "Actor/Gadget/Q4013206Trigger", 70900002, 0, points.TPos_Q4013206Trigger.pos, points.TPos_Q4013206Trigger.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc1081Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30452Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30453Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40132:OnSubFinish4013206(arg1)
    print("OnSubFinish4013206")
    this:ActorDestroy("Q4013206Trigger")
end

function Quest40132:OnSubStart4013207(arg1)
    print("OnSubStart4013207")
    this:CreateQuestNpc(arg1, npcs.Npc1073Data.id, 0)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc1073Data.alias)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, false)
    questNpcActor:DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1081Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc30452Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc30453Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q4013207Trigger", "Actor/Gadget/Q4013207Trigger", 70900002, 0, points.TPos_Q4013207Trigger.pos, points.TPos_Q4013207Trigger.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc1081Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30452Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30453Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40132:OnSubFinish4013207(arg1)
    print("OnSubFinish4013207")
    this:GetQuestNpcActor(npcs.Npc1081Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc30452Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc30453Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc1073Data.alias):DisableInteeHeadCtrl(false)
    this:SafeDestroyQuestNpc(npcs.Npc1073Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30452Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30453Data.alias, 3)
    this:ActorDestroy("Q4013207Trigger")
end

function Quest40132:OnSubStart4013208(arg1)
    print("OnSubStart4013208")
    this:CreateQuestNpc(arg1, npcs.Npc1081Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc1081Data.alias):DoFreeStyle(1220, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q4013208Trigger", "Actor/Gadget/Q4013208Trigger", 70900002, 0, points.TPos_Q4013208Trigger.pos, points.TPos_Q4013208Trigger.rot, true, false, 3)
    this:CreateQuestNpc(arg1, npcs.Npc13361Data.id, 0)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc13361Data.alias)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:DoFreeStyle(4221, true, nil, true, true, false, false)
end

function Quest40132:OnSubFinish4013208(arg1)
    print("OnSubFinish4013208")
    this:SafeDestroyQuestNpc(npcs.Npc1081Data.alias, 3)
    this:ActorDestroy("Q4013208Trigger")
    this:GetQuestNpcActor(npcs.Npc13361Data.alias):DisableInteeHeadCtrl(false)
    this:SafeDestroyQuestNpc(npcs.Npc13361Data.alias, 3)
end

return Quest40132
