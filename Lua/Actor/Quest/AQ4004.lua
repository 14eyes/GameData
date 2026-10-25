require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest4004 = class("Quest4004", QuestActorProxy)
Quest4004.defaultAlias = "Quest4004"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest4004:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest4004:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["400401"] = self.OnSubStart400401,
        ["400402"] = self.OnSubStart400402,
        ["400403"] = self.OnSubStart400403,
        ["400417"] = self.OnSubStart400417,
        ["400404"] = self.OnSubStart400404,
        ["400405"] = self.OnSubStart400405,
        ["400406"] = self.OnSubStart400406,
        ["400407"] = self.OnSubStart400407,
        ["400408"] = self.OnSubStart400408,
        ["400416"] = self.OnSubStart400416,
        ["400409"] = self.OnSubStart400409,
        ["400410"] = self.OnSubStart400410,
        ["400420"] = self.OnSubStart400420,
        ["400419"] = self.OnSubStart400419,
        ["400418"] = self.OnSubStart400418,
        ["400411"] = self.OnSubStart400411,
        ["400412"] = self.OnSubStart400412,
        ["400413"] = self.OnSubStart400413,
        ["400414"] = self.OnSubStart400414,
        ["400428"] = self.OnSubStart400428,
        ["400424"] = self.OnSubStart400424,
        ["400423"] = self.OnSubStart400423,
        ["400422"] = self.OnSubStart400422,
        ["400426"] = self.OnSubStart400426,
        ["400421"] = self.OnSubStart400421,
        ["400415"] = self.OnSubStart400415,
        ["400429"] = self.OnSubStart400429,
        ["400427"] = self.OnSubStart400427,
        ["400425"] = self.OnSubStart400425
    }
end

function Quest4004:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["400401"] = self.OnSubFinish400401,
        ["400402"] = self.OnSubFinish400402,
        ["400403"] = self.OnSubFinish400403,
        ["400417"] = self.OnSubFinish400417,
        ["400404"] = self.OnSubFinish400404,
        ["400405"] = self.OnSubFinish400405,
        ["400406"] = self.OnSubFinish400406,
        ["400407"] = self.OnSubFinish400407,
        ["400408"] = self.OnSubFinish400408,
        ["400416"] = self.OnSubFinish400416,
        ["400409"] = self.OnSubFinish400409,
        ["400410"] = self.OnSubFinish400410,
        ["400420"] = self.OnSubFinish400420,
        ["400419"] = self.OnSubFinish400419,
        ["400418"] = self.OnSubFinish400418,
        ["400411"] = self.OnSubFinish400411,
        ["400412"] = self.OnSubFinish400412,
        ["400413"] = self.OnSubFinish400413,
        ["400414"] = self.OnSubFinish400414,
        ["400428"] = self.OnSubFinish400428,
        ["400424"] = self.OnSubFinish400424,
        ["400423"] = self.OnSubFinish400423,
        ["400422"] = self.OnSubFinish400422,
        ["400426"] = self.OnSubFinish400426,
        ["400421"] = self.OnSubFinish400421,
        ["400415"] = self.OnSubFinish400415,
        ["400429"] = self.OnSubFinish400429,
        ["400427"] = self.OnSubFinish400427,
        ["400425"] = self.OnSubFinish400425
    }
end

function Quest4004:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest4004:Start()
    print("Start")
end

function Quest4004:OnDestroy()
    print("OnDestroy")
end

function Quest4004:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest4004:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest4004:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest4004:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest4004:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        print("FinishSubQuest400426")
        actorUtils.FinishQuestID(false, 400426)
    elseif arg1 == 2 then
        this:GetQuestNpcActor(npcs.Npc1071Data.alias):ChangeNpcAvatarPendantVisual(true)
    elseif arg1 == 3 then
        this:GetQuestNpcActor(npcs.Npc1071Data.alias):ChangeNpcAvatarPendantVisual(false)
    elseif arg1 == 4 then
        print("FinishSubQuest400424")
        actorUtils.FinishQuestID(false, 400424)
    elseif arg1 == 5 then
        print("UnbindQuestNpcFromPlatform")
        local v = this
        local v2 = v
        local unbindQuestNpcFromPlatform = v.UnbindQuestNpcFromPlatform
        local n = 1025
        local n2 = 4004
        local tbl = {x = 3541.104, y = 483.5033, z = 4552.247}
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
        local n6 = 4004
        local tbl3 = {x = 3541.104, y = 483.5033, z = 4552.247}
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
        local n10 = 4004
        local tbl5 = {x = 3541.999, y = 483.5033, z = 4552.215}
        local tbl6 = {}
        local n11 = 0
        local n12 = 0
        tbl6[1] = 0
        tbl6[2] = n11
        tbl6[3] = n12
        unbindQuestNpcFromPlatform2(v6, n9, n10, tbl5, tbl6)
        local v7 = this
        local v8 = v7
        local unbindQuestNpcFromPlatform3 = v7.UnbindQuestNpcFromPlatform
        local n13 = 1070
        local n14 = 4004
        local tbl7 = {x = 3542.326, y = 483.5033, z = 4554.256}
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
        local n17 = 1071
        local n18 = 4004
        local tbl9 = {x = 3540.443, y = 483.5033, z = 4553.488}
        local tbl10 = {}
        local n19 = 0
        local n20 = 0
        tbl10[1] = 0
        tbl10[2] = n19
        tbl10[3] = n20
        unbindQuestNpcFromPlatform4(v10, n17, n18, tbl9, tbl10)
        local v11 = this
        local v12 = v11
        local unbindQuestNpcFromPlatform5 = v11.UnbindQuestNpcFromPlatform
        local n21 = 1072
        local n22 = 4004
        local tbl11 = {x = 3540.57, y = 483.5033, z = 4554.414}
        local tbl12 = {}
        local n23 = 0
        local n24 = 0
        tbl12[1] = 0
        tbl12[2] = n23
        tbl12[3] = n24
        unbindQuestNpcFromPlatform5(v12, n21, n22, tbl11, tbl12)
    elseif arg1 == 6 then
        print("FinishSubQuest400427")
        actorUtils.FinishQuestID(false, 400427)
    end
end

function Quest4004:OnSubStart400401(arg1)
    print("OnSubStart400401")
    this:CreateQuestNpcWithTriggerBlack("400401tri", 400401, 1052, 0, 10, 1)
end

function Quest4004:OnSubFinish400401(arg1)
    print("OnSubFinish400401")
    this:DestroyQuestNpcActor(npcs.Npc1052Data.alias, 3)
    this:ActorDestroy("400401tri")
    this:TransmitPlayerWithDialogTextByQuestId(400401, 1, datas.DialogsId_01, 5)
end

function Quest4004:OnSubStart400402(arg1)
    print("OnSubStart400402")
    this:CreateQuestNpc(arg1, npcs.Npc5138Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5138Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc5135Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5135Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q4004Trigger", "Actor/Gadget/Q4004Trigger", 70900002, 0, {x = 1627.174, y = 282.118, z = 5037.88}, {x = 0.0, y = 309.375, z = 0.0}, true, false, 3)
    this:NotifyTo(npcs.Npc5133Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5139Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc13359Data.id, 0)
end

function Quest4004:OnSubFinish400402(arg1)
    print("OnSubFinish400402")
    this:ActorDestroy("Q4004Trigger")
end

function Quest4004:OnSubStart400403(arg1)
    print("OnSubStart400403")
    this:GetQuestNpcActor(npcs.Npc5138Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc5135Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc5138Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc5135Data.alias):DisableInteeHeadCtrl(true)
    this:NotifyTo(npcs.Npc5133Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5139Data.alias, 1, true)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1072Data.id, 0)
        this:GetQuestNpcActor(npcs.Npc1072Data.alias):DisableInteeHeadCtrl(true)
    end)
end

function Quest4004:OnSubFinish400403(arg1)
    print("OnSubFinish400403")
end

function Quest4004:OnSubStart400417(arg1)
    print("OnSubStart400417")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1072Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1071Data.id, 0)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc1071Data.alias, 4004)
        this:NpcWalkToRouteTaskEasy(questNpcActor, datas.RoutePointsDatalinni, function(arg1)
            actorUtils.FinishQuestID(false, 400417)
        end)

        local v = this:GetQuestNpcActor(npcs.Npc1072Data.alias, 4004)
        this:NpcWalkToRouteTaskEasy(v, datas.RoutePointsDatalinnite)
        this:NotifyTo(npcs.Npc5133Data.alias, 1, true)
        this:GetQuestNpcActor(npcs.Npc5138Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc5135Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc5138Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc5135Data.alias):DisableInteeHeadCtrl(true)
        this:NotifyTo(npcs.Npc5139Data.alias, 1, true)
        this:NotifyTo(npcs.Npc5134Data.alias, 1, true)
        this:GetQuestNpcActor(npcs.Npc1072Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1071Data.alias):DisableInteeHeadCtrl(true)
    end)
end

function Quest4004:OnSubFinish400417(arg1)
    print("OnSubFinish400417")
    this:GetQuestNpcActor(npcs.Npc1072Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc1071Data.alias):DisableInteeHeadCtrl(false)
end

function Quest4004:OnSubStart400404(arg1)
    print("OnSubStart400404")
    actorMgr:CreateActorWithPos("Q4004Trigger2", "Actor/Gadget/Q4004Trigger2", 70900002, 0, points.TPos_Q4004Trigger2.pos, points.TPos_Q4004Trigger2.rot, true, false, 3)
    this:NotifyTo(npcs.Npc5133Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5134Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc5138Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc5135Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc5138Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc5135Data.alias):DisableInteeHeadCtrl(true)
    this:NotifyTo(npcs.Npc5139Data.alias, 1, true)
end

function Quest4004:OnSubFinish400404(arg1)
    print("OnSubFinish400404")
    this:ActorDestroy("Q4004Trigger2")
end

function Quest4004:OnSubStart400405(arg1)
    print("OnSubStart400405")
    this:CreateQuestNpcWithTriggerBlack("400405tri", 400405, 1071, 0, 30, 1)
    this:NotifyTo(npcs.Npc5133Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5134Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc5138Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:NotifyTo(npcs.Npc5136Data.alias, 2, true)
    this:GetQuestNpcActor(npcs.Npc5136Data.alias):DoFreeStateTrigger()
    this:GetQuestNpcActor(npcs.Npc5135Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc5138Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc5135Data.alias):DisableInteeHeadCtrl(true)
    this:NotifyTo(npcs.Npc5139Data.alias, 1, true)
end

function Quest4004:OnSubFinish400405(arg1)
    print("OnSubFinish400405")
    this:SafeDestroyQuestNpc(npcs.Npc1072Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1071Data.alias, 3)
    this:ActorDestroy("400405tri")
    this:LightNotifyTo(npcs.Npc5133Data.alias, 0, true)
    this:GetQuestNpcActor(npcs.Npc5138Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc5135Data.alias):DisableInteeHeadCtrl(false)
    this:SafeDestroyQuestNpc(npcs.Npc5135Data.alias, 3)
end

function Quest4004:OnSubStart400406(arg1)
    print("OnSubStart400406")
    this:CreateQuestNpc(arg1, npcs.Npc5138Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5138Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest4004:OnSubFinish400406(arg1)
    print("OnSubFinish400406")
end

function Quest4004:OnSubStart400407(arg1)
    print("OnSubStart400407")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc5136Data.id, 0)
        this:GetQuestNpcActor(npcs.Npc5136Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    end)
end

function Quest4004:OnSubFinish400407(arg1)
    print("OnSubFinish400407")
end

function Quest4004:OnSubStart400408(arg1)
    print("OnSubStart400408")
    this:CreateQuestNpc(arg1, npcs.Npc5133Data.id, 0)
end

function Quest4004:OnSubFinish400408(arg1)
    print("OnSubFinish400408")
end

function Quest4004:OnSubStart400416(arg1)
    print("OnSubStart400416")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc5138Data.alias)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, false)
    questNpcActor:DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc5136Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:NotifyTo(npcs.Npc5139Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5134Data.alias, 1, true)
end

function Quest4004:OnSubFinish400416(arg1)
    print("OnSubFinish400416")
end

function Quest4004:OnSubStart400409(arg1)
    print("OnSubStart400409")
    this:CreateQuestNpc(arg1, npcs.Npc1072Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1071Data.id, 0)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc5138Data.alias)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, false)
    questNpcActor:DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc5136Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:NotifyTo(npcs.Npc5139Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5134Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc1071Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1072Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1071Data.alias):DisableInteeHeadCtrl(true)
    actorMgr:CreateActorWithPos("Q4004Trigger5", "Actor/Gadget/Q4004Trigger5", 70900002, 0, points.TPos_Q4004Trigger5.pos, points.TPos_Q4004Trigger5.rot, true, false, 3)
end

function Quest4004:OnSubFinish400409(arg1)
    print("OnSubFinish400409")
    this:SafeDestroyQuestNpc(npcs.Npc1072Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1071Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5136Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5138Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5133Data.alias, 3)
    this:GetQuestNpcActor(npcs.Npc5138Data.alias):DisableInteeHeadCtrl(false)
    this:LightNotifyTo(npcs.Npc5139Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5136Data.alias, 0, true)
    this:GetQuestNpcActor(npcs.Npc1072Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc1071Data.alias):DisableInteeHeadCtrl(false)
    this:ActorDestroy("Q4004Trigger5")
end

function Quest4004:OnSubStart400410(arg1)
    print("OnSubStart400410")
    this:NotifyTo(npcs.Npc5134Data.alias, 1, true)
end

function Quest4004:OnSubFinish400410(arg1)
    print("OnSubFinish400410")
end

function Quest4004:OnSubStart400420(arg1)
    print("OnSubStart400420")
    this:NotifyTo(npcs.Npc5134Data.alias, 1, true)
end

function Quest4004:OnSubFinish400420(arg1)
    print("OnSubFinish400420")
end

function Quest4004:OnSubStart400419(arg1)
    print("OnSubStart400419")
    this:NotifyTo(npcs.Npc5134Data.alias, 1, true)
end

function Quest4004:OnSubFinish400419(arg1)
    print("OnSubFinish400419")
end

function Quest4004:OnSubStart400418(arg1)
    print("OnSubStart400418")
end

function Quest4004:OnSubFinish400418(arg1)
    print("OnSubFinish400418")
    this:NarratorOnlyTaskByData(datas.Narrator_400401)
end

function Quest4004:OnSubStart400411(arg1)
    print("OnSubStart400411")
    this:CreateQuestNpc(arg1, npcs.Npc1072Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1071Data.id, 0)
    this:NotifyTo(npcs.Npc5134Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc1072Data.alias):DisableInteeHeadCtrl(true)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc1071Data.alias)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:DoFreeStyle(1120, true, nil, true, true, false, false)
    this:NotifyTo(npcs.Npc5099Data.alias, 1, true)
end

function Quest4004:OnSubFinish400411(arg1)
    print("OnSubFinish400411")
    this:SafeDestroyQuestNpc(npcs.Npc1072Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1071Data.alias, 3)
    this:GetQuestNpcActor(npcs.Npc1072Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc1071Data.alias):DisableInteeHeadCtrl(false)
    this:NotifyTo(npcs.Npc5137Data.alias, 1, true)
end

function Quest4004:OnSubStart400412(arg1)
    print("OnSubStart400412")
    this:CreateQuestNpcWithTriggerBlack("400412tri", 400412, 1005, 0, 5, 1)
    this:NotifyTo(npcs.Npc5151Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5152Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5134Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5099Data.alias, 1, true)
    this:ActionSafeCall(function(arg1)
        this:NotifyTo(npcs.Npc5137Data.alias, 1, true)
    end)
end

function Quest4004:OnSubFinish400412(arg1)
    print("OnSubFinish400412")
    this:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    this:ActorDestroy("400412tri")
    this:LightNotifyTo(npcs.Npc5134Data.alias, 0, true)
end

function Quest4004:OnSubStart400413(arg1)
    print("OnSubStart400413")
    this:CreateQuestNpc(arg1, npcs.Npc1072Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1071Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5137Data.id, 0)
    this:NotifyTo(npcs.Npc5099Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q4004Trigger1", "Actor/Gadget/Q4004Trigger1", 70900002, 0, points.TPos_Q4004Trigger1.pos, points.TPos_Q4004Trigger1.rot, true, false, 3)
    this:NotifyTo(npcs.Npc5151Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5152Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc1072Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1071Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc5137Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1071Data.alias):DoFreeStyle(1110, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc5137Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
end

function Quest4004:OnSubFinish400413(arg1)
    print("OnSubFinish400413")
    this:SafeDestroyQuestNpc(npcs.Npc1072Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1071Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5137Data.alias, 3)
    this:ActorDestroy("Q4004Trigger1")
    this:GetQuestNpcActor(npcs.Npc1072Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc1071Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc5137Data.alias):DisableInteeHeadCtrl(false)
    this:LightNotifyTo(npcs.Npc5137Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5099Data.alias, 0, true)
end

function Quest4004:OnSubStart400414(arg1)
    print("OnSubStart400414")
    this:NotifyTo(npcs.Npc5151Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5152Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5001Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q4004Trigger3", "Actor/Gadget/Q4004Trigger3", 70900002, 0, points.TPos_Q4004Trigger3.pos, points.TPos_Q4004Trigger3.rot, true, false, 3)
end

function Quest4004:OnSubFinish400414(arg1)
    print("OnSubFinish400414")
    this:LightNotifyTo(npcs.Npc5151Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5152Data.alias, 0, true)
    this:ActorDestroy("Q4004Trigger3")
end

function Quest4004:OnSubStart400428(arg1)
    print("OnSubStart400428")
    local groupEntityCreateTask = curtainUtils.CreateGroupEntityCreateTask({{groupId = 133405030, configId = 30001}})
    this:ShowBlackScreen(1, 3, 0, nil, function(arg1)
        this:ShowBlackScreen(0, 2, 0, nil, nil, nil, "", false, true)
        this:CreateQuestNpcWithTrigger("400428tri", 400428, 1071, 0, 40)
    end, groupEntityCreateTask, "", false, true)
end

function Quest4004:OnSubFinish400428(arg1)
    print("OnSubFinish400428")
    this:ActorDestroy("400428tri")
    this:TransmitPlayerWithDialogTextByQuestId(400428, 1, datas.DialogsId, 5)
end

function Quest4004:OnSubStart400424(arg1)
    print("OnSubStart400424")
end

function Quest4004:OnSubFinish400424(arg1)
    print("OnSubFinish400424")
end

function Quest4004:OnSubStart400423(arg1)
    print("OnSubStart400423")
end

function Quest4004:OnSubFinish400423(arg1)
    print("OnSubFinish400423")
end

function Quest4004:OnSubStart400422(arg1)
    print("OnSubStart400422")
end

function Quest4004:OnSubFinish400422(arg1)
    print("OnSubFinish400422")
end

function Quest4004:OnSubStart400426(arg1)
    print("OnSubStart400426")
end

function Quest4004:OnSubFinish400426(arg1)
    print("OnSubFinish400426")
end

function Quest4004:OnSubStart400421(arg1)
    print("OnSubStart400421")
end

function Quest4004:OnSubFinish400421(arg1)
    print("OnSubFinish400421")
end

function Quest4004:OnSubStart400415(arg1)
    print("OnSubStart400415")
    this:NotifyTo(npcs.Npc5001Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q4004Trigger4", "Actor/Gadget/Q4004Trigger4", 70900002, 0, points.TPos_Q4004Trigger4.pos, points.TPos_Q4004Trigger4.rot, true, false, 3)
end

function Quest4004:OnSubFinish400415(arg1)
    print("OnSubFinish400415")
    this:ActorDestroy("Q4004Trigger4")
end

function Quest4004:OnSubStart400429(arg1)
    print("OnSubStart400429")
    local groupEntityCreateTask = curtainUtils.CreateGroupEntityCreateTask({{groupId = 133401651, configId = 651001}})
    this:ShowBlackScreen(0, 3, 0, nil, function(arg1)
        this:ShowBlackScreen(0, 2, 0, nil, nil, nil, "", false, true)
        this:CreateQuestNpcWithTrigger("400429tri", 400429, 1005, 0, 40)
    end, groupEntityCreateTask, "", false, true)
end

function Quest4004:OnSubFinish400429(arg1)
    print("OnSubFinish400429")
    local questNpcActor = this:GetQuestNpcActor(npcs.PaimonData.alias)
    this:ActorDestroy("400429tri")
    this:DestroyQuestNpcActor(npcs.Npc13359Data.alias, 3)
    this:TransmitPlayerWithTextByQuestId(400429, 1, {"QUEST_Message_Q3007"}, 2.5)
    this:LightNotifyTo(npcs.Npc5001Data.alias, 0, true)
end

function Quest4004:OnSubStart400427(arg1)
    print("OnSubStart400427")
end

function Quest4004:OnSubFinish400427(arg1)
    print("OnSubFinish400427")
end

function Quest4004:OnSubStart400425(arg1)
    print("OnSubStart400425")
    this:CreateQuestNpcWithTriggerBlackEx("400425tri", 400425, 1071, 0, 20, 0, 1, 0.5, 1)
end

function Quest4004:OnSubFinish400425(arg1)
    print("OnSubFinish400425")
    this:SafeDestroyQuestNpc(npcs.Npc1071Data.alias, 3)
    this:ActorDestroy("400425tri")
end

return Quest4004
