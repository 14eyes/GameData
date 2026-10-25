require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71811 = class("Quest71811", QuestActorProxy)
Quest71811.defaultAlias = "Quest71811"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest71811:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71811:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7181101"] = self.OnSubStart7181101,
        ["7181102"] = self.OnSubStart7181102,
        ["7181103"] = self.OnSubStart7181103,
        ["7181104"] = self.OnSubStart7181104,
        ["7181105"] = self.OnSubStart7181105,
        ["7181106"] = self.OnSubStart7181106,
        ["7181107"] = self.OnSubStart7181107
    }
end

function Quest71811:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7181101"] = self.OnSubFinish7181101,
        ["7181102"] = self.OnSubFinish7181102,
        ["7181103"] = self.OnSubFinish7181103,
        ["7181104"] = self.OnSubFinish7181104,
        ["7181105"] = self.OnSubFinish7181105,
        ["7181106"] = self.OnSubFinish7181106,
        ["7181107"] = self.OnSubFinish7181107
    }
end

function Quest71811:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7181101"] = self.OnSubFailed7181101,
        ["7181102"] = self.OnSubFailed7181102,
        ["7181103"] = self.OnSubFailed7181103,
        ["7181104"] = self.OnSubFailed7181104,
        ["7181105"] = self.OnSubFailed7181105,
        ["7181106"] = self.OnSubFailed7181106,
        ["7181107"] = self.OnSubFailed7181107
    }
end

function Quest71811:Start()
    print("Start")
end

function Quest71811:OnDestroy()
    print("OnDestroy")
end

function Quest71811:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71811:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71811:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyQuestNpcActorByAlias(npcs.Npc201001Data.alias, false)
    this:DestroyQuestNpcActorByAlias(npcs.Npc209201Data.alias, false)
    this:NotifyTo("Npc2010", 0, true)
    this:NotifyTo("", 0, true)
end

function Quest71811:OnSubStart7181101(arg1)
    print("OnSubStart7181101")
end

function Quest71811:OnSubFinish7181101(arg1)
    print("OnSubFinish7181101")
end

function Quest71811:OnSubFailed7181101(arg1)
    print("OnSubFailed7181101")
end

function Quest71811:OnSubStart7181102(arg1)
    print("OnSubStart7181102")
end

function Quest71811:OnSubFinish7181102(arg1)
    print("OnSubFinish7181102")
end

function Quest71811:OnSubFailed7181102(arg1)
    print("OnSubFailed7181102")
end

function Quest71811:OnSubStart7181103(arg1)
    print("OnSubStart7181103")
    this:NotifyTo("Npc2010", 1, true)
    this:NotifyTo("Npc2092", 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc201001Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc209201Data.id, 2)
end

function Quest71811:OnSubFinish7181103(arg1)
    print("OnSubFinish7181103")
end

function Quest71811:OnSubFailed7181103(arg1)
    print("OnSubFailed7181103")
end

function Quest71811:OnSubStart7181104(arg1)
    print("OnSubStart7181104")
    this:NotifyTo("Npc2010", 1, true)
    this:NotifyTo("Npc2092", 1, true)
end

function Quest71811:OnSubFinish7181104(arg1)
    print("OnSubFinish7181104")
end

function Quest71811:OnSubFailed7181104(arg1)
    print("OnSubFailed7181104")
end

function Quest71811:OnSubStart7181105(arg1)
    print("OnSubStart7181105")
    this:NotifyTo("Npc2010", 1, true)
    this:NotifyTo("Npc2092", 1, true)
end

function Quest71811:OnSubFinish7181105(arg1)
    print("OnSubFinish7181105")
end

function Quest71811:OnSubFailed7181105(arg1)
    print("OnSubFailed7181105")
end

function Quest71811:OnSubStart7181106(arg1)
    print("OnSubStart7181106")
    this:NotifyTo("Npc2010", 1, true)
    this:NotifyTo("Npc2092", 1, true)
end

function Quest71811:OnSubFinish7181106(arg1)
    print("OnSubFinish7181106")
end

function Quest71811:OnSubFailed7181106(arg1)
    print("OnSubFailed7181106")
end

function Quest71811:OnSubStart7181107(arg1)
    print("OnSubStart7181107")
    this:NotifyTo("Npc2010", 1, true)
    this:NotifyTo("Npc2092", 1, true)
end

function Quest71811:OnSubFinish7181107(arg1)
    print("OnSubFinish7181107")
    this:LightNotifyTo("Npc2010", 0, true)
    this:LightNotifyTo("Npc2002", 0, true)
    this:SafeDestroyQuestNpc(npcs.Npc201001Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc209201Data.alias, 3)
end

function Quest71811:OnSubFailed7181107(arg1)
    print("OnSubFailed7181107")
end

return Quest71811
