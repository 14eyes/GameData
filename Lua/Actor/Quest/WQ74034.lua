require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74034 = class("Quest74034", QuestActorProxy)
Quest74034.defaultAlias = "Quest74034"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest74034:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest74034:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7403402"] = self.OnSubStart7403402,
        ["7403401"] = self.OnSubStart7403401,
        ["7403414"] = self.OnSubStart7403414,
        ["7403415"] = self.OnSubStart7403415,
        ["7403403"] = self.OnSubStart7403403,
        ["7403405"] = self.OnSubStart7403405,
        ["7403407"] = self.OnSubStart7403407,
        ["7403409"] = self.OnSubStart7403409,
        ["7403411"] = self.OnSubStart7403411,
        ["7403408"] = self.OnSubStart7403408,
        ["7403406"] = self.OnSubStart7403406,
        ["7403410"] = self.OnSubStart7403410,
        ["7403404"] = self.OnSubStart7403404,
        ["7403412"] = self.OnSubStart7403412,
        ["7403413"] = self.OnSubStart7403413
    }
end

function Quest74034:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7403402"] = self.OnSubFinish7403402,
        ["7403401"] = self.OnSubFinish7403401,
        ["7403414"] = self.OnSubFinish7403414,
        ["7403415"] = self.OnSubFinish7403415,
        ["7403403"] = self.OnSubFinish7403403,
        ["7403405"] = self.OnSubFinish7403405,
        ["7403407"] = self.OnSubFinish7403407,
        ["7403409"] = self.OnSubFinish7403409,
        ["7403411"] = self.OnSubFinish7403411,
        ["7403408"] = self.OnSubFinish7403408,
        ["7403406"] = self.OnSubFinish7403406,
        ["7403410"] = self.OnSubFinish7403410,
        ["7403404"] = self.OnSubFinish7403404,
        ["7403412"] = self.OnSubFinish7403412,
        ["7403413"] = self.OnSubFinish7403413
    }
end

function Quest74034:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74034:Start()
    print("Start")
end

function Quest74034:OnDestroy()
    print("OnDestroy")
end

function Quest74034:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74034:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74034:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74034:OnSubStart7403402(arg1)
    print("OnSubStart7403402")
end

function Quest74034:OnSubFinish7403402(arg1)
    print("OnSubFinish7403402")
end

function Quest74034:OnSubStart7403401(arg1)
    print("OnSubStart7403401")
end

function Quest74034:OnSubFinish7403401(arg1)
    print("OnSubFinish7403401")
end

function Quest74034:OnSubStart7403414(arg1)
    print("OnSubStart7403414")
end

function Quest74034:OnSubFinish7403414(arg1)
    print("OnSubFinish7403414")
end

function Quest74034:OnSubStart7403415(arg1)
    print("OnSubStart7403415")
end

function Quest74034:OnSubFinish7403415(arg1)
    print("OnSubFinish7403415")
end

function Quest74034:OnSubStart7403403(arg1)
    print("OnSubStart7403403")
    this:CreateQuestNpc(arg1, npcs.Npc13350Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13350Data.alias):SitOnChair(0, false)
    this:NotifyTo(npcs.Npc5083Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5084Data.alias, 1, true)
end

function Quest74034:OnSubFinish7403403(arg1)
    print("OnSubFinish7403403")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc13350Data.alias, 3)
    end)
end

function Quest74034:OnSubStart7403405(arg1)
    print("OnSubStart7403405")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc13351Data.id, 0)
        this:GetQuestNpcActor(npcs.Npc13351Data.alias):SitOnChair(0, false)
        this:NotifyTo(npcs.Npc5083Data.alias, 1, true)
        this:NotifyTo(npcs.Npc5084Data.alias, 1, true)
    end)
end

function Quest74034:OnSubFinish7403405(arg1)
    print("OnSubFinish7403405")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc13351Data.alias, 3)
    end)
end

function Quest74034:OnSubStart7403407(arg1)
    print("OnSubStart7403407")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc13351Data.id, 0)
        this:GetQuestNpcActor(npcs.Npc13351Data.alias):SitOnChair(0, false)
        this:NotifyTo(npcs.Npc5083Data.alias, 1, true)
        this:NotifyTo(npcs.Npc5084Data.alias, 1, true)
    end)
end

function Quest74034:OnSubFinish7403407(arg1)
    print("OnSubFinish7403407")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc13351Data.alias, 3)
    end)
end

function Quest74034:OnSubStart7403409(arg1)
    print("OnSubStart7403409")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc13350Data.id, 0)
        this:GetQuestNpcActor(npcs.Npc13350Data.alias):SitOnChair(0, false)
        this:NotifyTo(npcs.Npc5083Data.alias, 1, true)
        this:NotifyTo(npcs.Npc5084Data.alias, 1, true)
    end)
end

function Quest74034:OnSubFinish7403409(arg1)
    print("OnSubFinish7403409")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc13350Data.alias, 3)
    end)
end

function Quest74034:OnSubStart7403411(arg1)
    print("OnSubStart7403411")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc13350Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc13351Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc5083Data.id, 0)
        this:NotifyTo(npcs.Npc5084Data.alias, 1, true)
        this:GetQuestNpcActor(npcs.Npc5083Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc13350Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc13351Data.alias):DoFreeStyle(1060, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc13350Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc13351Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc5083Data.alias):DisableInteeHeadCtrl(true)
        actorMgr:CreateActorWithPos("Q74034Trigger", "Actor/Gadget/Q74034Trigger", 70900002, 0, points.TPos_Q74034Trigger.pos, points.TPos_Q74034Trigger.rot, true, false, 1083)
    end)
end

function Quest74034:OnSubFinish7403411(arg1)
    print("OnSubFinish7403411")
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc13350Data.alias):DisableInteeHeadCtrl(false)
        this:GetQuestNpcActor(npcs.Npc13351Data.alias):DisableInteeHeadCtrl(false)
        this:GetQuestNpcActor(npcs.Npc5083Data.alias):DisableInteeHeadCtrl(false)
        this:DestroyQuestNpcActor(npcs.Npc13350Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc13351Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc5083Data.alias, 3)
        this:LightNotifyTo(npcs.Npc5084Data.alias, 0, true)
        this:NarratorOnlyTaskByData(datas.Narrator_7403401, nil, 74034)
    end)
end

function Quest74034:OnSubStart7403408(arg1)
    print("OnSubStart7403408")
end

function Quest74034:OnSubFinish7403408(arg1)
    print("OnSubFinish7403408")
end

function Quest74034:OnSubStart7403406(arg1)
    print("OnSubStart7403406")
end

function Quest74034:OnSubFinish7403406(arg1)
    print("OnSubFinish7403406")
end

function Quest74034:OnSubStart7403410(arg1)
    print("OnSubStart7403410")
end

function Quest74034:OnSubFinish7403410(arg1)
    print("OnSubFinish7403410")
end

function Quest74034:OnSubStart7403404(arg1)
    print("OnSubStart7403404")
end

function Quest74034:OnSubFinish7403404(arg1)
    print("OnSubFinish7403404")
end

function Quest74034:OnSubStart7403412(arg1)
    print("OnSubStart7403412")
end

function Quest74034:OnSubFinish7403412(arg1)
    print("OnSubFinish7403412")
end

function Quest74034:OnSubStart7403413(arg1)
    print("OnSubStart7403413")
end

function Quest74034:OnSubFinish7403413(arg1)
    print("OnSubFinish7403413")
end

return Quest74034
