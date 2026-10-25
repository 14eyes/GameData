require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79046 = class("Quest79046", QuestActorProxy)
Quest79046.defaultAlias = "Quest79046"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest79046:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest79046:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7904601"] = self.OnSubStart7904601,
        ["7904602"] = self.OnSubStart7904602,
        ["7904605"] = self.OnSubStart7904605,
        ["7904606"] = self.OnSubStart7904606,
        ["7904603"] = self.OnSubStart7904603,
        ["7904607"] = self.OnSubStart7904607,
        ["7904610"] = self.OnSubStart7904610,
        ["7904611"] = self.OnSubStart7904611,
        ["7904608"] = self.OnSubStart7904608,
        ["7904604"] = self.OnSubStart7904604,
        ["7904609"] = self.OnSubStart7904609,
        ["7904612"] = self.OnSubStart7904612
    }
end

function Quest79046:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7904601"] = self.OnSubFinish7904601,
        ["7904602"] = self.OnSubFinish7904602,
        ["7904605"] = self.OnSubFinish7904605,
        ["7904606"] = self.OnSubFinish7904606,
        ["7904603"] = self.OnSubFinish7904603,
        ["7904607"] = self.OnSubFinish7904607,
        ["7904610"] = self.OnSubFinish7904610,
        ["7904611"] = self.OnSubFinish7904611,
        ["7904608"] = self.OnSubFinish7904608,
        ["7904604"] = self.OnSubFinish7904604,
        ["7904609"] = self.OnSubFinish7904609,
        ["7904612"] = self.OnSubFinish7904612
    }
end

function Quest79046:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest79046:Start()
    print("Start")
end

function Quest79046:OnDestroy()
    print("OnDestroy")
end

function Quest79046:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79046:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79046:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79046:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest79046:OnSubStart7904601(arg1)
    print("OnSubStart7904601")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc20977Data.id, 1)
end

function Quest79046:OnSubFinish7904601(arg1)
    print("OnSubFinish7904601")
end

function Quest79046:OnSubStart7904602(arg1)
    print("OnSubStart7904602")
end

function Quest79046:OnSubFinish7904602(arg1)
    print("OnSubFinish7904602")
end

function Quest79046:OnSubStart7904605(arg1)
    print("OnSubStart7904605")
end

function Quest79046:OnSubFinish7904605(arg1)
    print("OnSubFinish7904605")
end

function Quest79046:OnSubStart7904606(arg1)
    print("OnSubStart7904606")
end

function Quest79046:OnSubFinish7904606(arg1)
    print("OnSubFinish7904606")
end

function Quest79046:OnSubStart7904603(arg1)
    print("OnSubStart7904603")
end

function Quest79046:OnSubFinish7904603(arg1)
    print("OnSubFinish7904603")
end

function Quest79046:OnSubStart7904607(arg1)
    print("OnSubStart7904607")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc21011Data.id, 0)
end

function Quest79046:OnSubFinish7904607(arg1)
    print("OnSubFinish7904607")
    this:SafeDestroyQuestNpc(npcs.Npc20977Data.alias, 10)
    this:SafeDestroyQuestNpc(npcs.Npc21011Data.alias, 10)
end

function Quest79046:OnSubStart7904610(arg1)
    print("OnSubStart7904610")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc20977Data.id, 1)
end

function Quest79046:OnSubFinish7904610(arg1)
    print("OnSubFinish7904610")
    this:SafeDestroyQuestNpc(npcs.Npc20977Data.alias, 10)
end

function Quest79046:OnSubStart7904611(arg1)
    print("OnSubStart7904611")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc20977Data.id, 0)
end

function Quest79046:OnSubFinish7904611(arg1)
    print("OnSubFinish7904611")
end

function Quest79046:OnSubStart7904608(arg1)
    print("OnSubStart7904608")
end

function Quest79046:OnSubFinish7904608(arg1)
    print("OnSubFinish7904608")
end

function Quest79046:OnSubStart7904604(arg1)
    print("OnSubStart7904604")
end

function Quest79046:OnSubFinish7904604(arg1)
    print("OnSubFinish7904604")
    this:SafeDestroyQuestNpc(npcs.Npc20977Data.alias, 10)
end

function Quest79046:OnSubStart7904609(arg1)
    print("OnSubStart7904609")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc20977Data.id, 0)
end

function Quest79046:OnSubFinish7904609(arg1)
    print("OnSubFinish7904609")
end

function Quest79046:OnSubStart7904612(arg1)
    print("OnSubStart7904612")
end

function Quest79046:OnSubFinish7904612(arg1)
    print("OnSubFinish7904612")
    this:SafeDestroyQuestNpc(npcs.Npc20977Data.alias, 10)
end

return Quest79046
