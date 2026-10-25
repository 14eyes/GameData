require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73024 = class("Quest73024", QuestActorProxy)
Quest73024.defaultAlias = "Quest73024"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73024:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73024:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7302401"] = self.OnSubStart7302401,
        ["7302410"] = self.OnSubStart7302410,
        ["7302409"] = self.OnSubStart7302409,
        ["7302406"] = self.OnSubStart7302406,
        ["7302402"] = self.OnSubStart7302402,
        ["7302403"] = self.OnSubStart7302403,
        ["7302404"] = self.OnSubStart7302404,
        ["7302405"] = self.OnSubStart7302405,
        ["7302407"] = self.OnSubStart7302407,
        ["7302408"] = self.OnSubStart7302408
    }
end

function Quest73024:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7302401"] = self.OnSubFinish7302401,
        ["7302410"] = self.OnSubFinish7302410,
        ["7302409"] = self.OnSubFinish7302409,
        ["7302406"] = self.OnSubFinish7302406,
        ["7302402"] = self.OnSubFinish7302402,
        ["7302403"] = self.OnSubFinish7302403,
        ["7302404"] = self.OnSubFinish7302404,
        ["7302405"] = self.OnSubFinish7302405,
        ["7302407"] = self.OnSubFinish7302407,
        ["7302408"] = self.OnSubFinish7302408
    }
end

function Quest73024:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73024:Start()
    print("Start")
end

function Quest73024:OnDestroy()
    print("OnDestroy")
end

function Quest73024:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73024:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73024:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73024:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest73024:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 7302404)
    elseif arg1 == 2 then
        actorUtils.FinishQuestID(false, 7302405)
    end
end

function Quest73024:OnSubStart7302401(arg1)
    print("OnSubStart7302401")
    self:CreateQuestNpc(arg1, npcs.Npc4198Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc4198Data.alias):DoFreeStyle(1080, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q73024Trigger", "Actor/Gadget/Q73024Trigger", 70900002, 0, {x = -854.277, y = 196.412, z = 2660.853}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest73024:OnSubFinish7302401(arg1)
    print("OnSubFinish7302401")
end

function Quest73024:OnSubStart7302410(arg1)
    print("OnSubStart7302410")
end

function Quest73024:OnSubFinish7302410(arg1)
    print("OnSubFinish7302410")
end

function Quest73024:OnSubStart7302409(arg1)
    print("OnSubStart7302409")
end

function Quest73024:OnSubFinish7302409(arg1)
    print("OnSubFinish7302409")
end

function Quest73024:OnSubStart7302406(arg1)
    print("OnSubStart7302406")
    self:GetQuestNpcActor(npcs.Npc4198Data.alias):DoFreeStyle(1080, true, nil, true, true, false, false)
    self:RequestInteraction(npcs.Npc4198Data.alias)
end

function Quest73024:OnSubFinish7302406(arg1)
    print("OnSubFinish7302406")
end

function Quest73024:OnSubStart7302402(arg1)
    print("OnSubStart7302402")
end

function Quest73024:OnSubFinish7302402(arg1)
    print("OnSubFinish7302402")
end

function Quest73024:OnSubStart7302403(arg1)
    print("OnSubStart7302403")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc4198Data.id, 1, npcs.Npc4198Data.alias)
end

function Quest73024:OnSubFinish7302403(arg1)
    print("OnSubFinish7302403")
end

function Quest73024:OnSubStart7302404(arg1)
    print("OnSubStart7302404")
end

function Quest73024:OnSubFinish7302404(arg1)
    print("OnSubFinish7302404")
end

function Quest73024:OnSubStart7302405(arg1)
    print("OnSubStart7302405")
end

function Quest73024:OnSubFinish7302405(arg1)
    print("OnSubFinish7302405")
end

function Quest73024:OnSubStart7302407(arg1)
    print("OnSubStart7302407")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        actorUtils.FinishQuestID(false, 7302407)
    end, nil, nil, "", false, true)
end

function Quest73024:OnSubFinish7302407(arg1)
    print("OnSubFinish7302407")
end

function Quest73024:OnSubStart7302408(arg1)
    print("OnSubStart7302408")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        actorUtils.FinishQuestID(false, 7302408)
    end, nil, nil, "", false, true)
end

function Quest73024:OnSubFinish7302408(arg1)
    print("OnSubFinish7302408")
end

return Quest73024
