require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest12032 = class("Quest12032", QuestActorProxy)
Quest12032.defaultAlias = "Quest12032"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest12032:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest12032:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1203201"] = self.OnSubStart1203201}
end

function Quest12032:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1203201"] = self.OnSubFinish1203201}
end

function Quest12032:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest12032:Start()
    print("Start")
end

function Quest12032:OnDestroy()
    print("OnDestroy")
end

function Quest12032:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest12032:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest12032:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest12032:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest12032:OnSubStart1203201(arg1)
    print("OnSubStart1203201")
    actorMgr:CreateActorWithPos("Q12032Trigger", "Actor/Gadget/Q12032Trigger", 70900002, 0, {x = -2469.901, y = 445.5836, z = -4417.944}, {x = 0, y = 0, z = 0}, true, false)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1034Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1036Data.id, 0)
        arg1_2:GetQuestNpcActor(npcs.Npc1036Data.alias):DoFreeStyle(1130, true, nil, true, true, false)
        arg1_2:GetQuestNpcActor(npcs.Npc1034Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    end)
end

function Quest12032:OnSubFinish1203201(arg1)
    print("OnSubFinish1203201")
    self:SafeDestroyQuestNpc(npcs.Npc1034Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1036Data.alias, 3)
    self:ActorDestroy("Q12032Trigger")
end

return Quest12032
