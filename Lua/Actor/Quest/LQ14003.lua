require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest14003 = class("Quest14003", QuestActorProxy)
Quest14003.defaultAlias = "Quest14003"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest14003:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest14003:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1400301"] = self.OnSubStart1400301, ["1400302"] = self.OnSubStart1400302}
end

function Quest14003:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1400301"] = self.OnSubFinish1400301, ["1400302"] = self.OnSubFinish1400302}
end

function Quest14003:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest14003:Start()
    print("Start")
end

function Quest14003:OnDestroy()
    print("OnDestroy")
end

function Quest14003:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest14003:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest14003:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest14003:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest14003:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4)
end

function Quest14003:OnSubStart1400301(arg1)
    print("OnSubStart1400301")
end

function Quest14003:OnSubFinish1400301(arg1)
    print("OnSubFinish1400301")
end

function Quest14003:OnSubStart1400302(arg1)
    print("OnSubStart1400302")
    this:NpcCreateWithNpcTrigger(npcs.Npc1070Data.id, 1400302, 0, 8)
    this:CreateQuestNpc(arg1, npcs.Npc1071Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1072Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc1070Data.alias):DoFreeStyle(1060, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1071Data.alias):DoFreeStyle(1172, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1072Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest14003:OnSubFinish1400302(arg1)
    print("OnSubFinish1400302")
    this:SafeDestroyQuestNpc(npcs.Npc1070Data.alias, 3)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc1071Data.alias)
    this:SafeDestroyQuestNpc(npcs.Npc1072Data.alias, 3)
end

return Quest14003
