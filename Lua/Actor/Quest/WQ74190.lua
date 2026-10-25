require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74190 = class("Quest74190", QuestActorProxy)
Quest74190.defaultAlias = "Quest74190"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74190:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74190:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7419001"] = self.OnSubStart7419001,
        ["7419002"] = self.OnSubStart7419002,
        ["7419003"] = self.OnSubStart7419003,
        ["7419004"] = self.OnSubStart7419004,
        ["7419005"] = self.OnSubStart7419005,
        ["7419006"] = self.OnSubStart7419006,
        ["7419007"] = self.OnSubStart7419007,
        ["7419008"] = self.OnSubStart7419008,
        ["7419009"] = self.OnSubStart7419009,
        ["7419010"] = self.OnSubStart7419010,
        ["7419011"] = self.OnSubStart7419011,
        ["7419012"] = self.OnSubStart7419012,
        ["7419013"] = self.OnSubStart7419013,
        ["7419014"] = self.OnSubStart7419014,
        ["7419015"] = self.OnSubStart7419015,
        ["7419016"] = self.OnSubStart7419016,
        ["7419017"] = self.OnSubStart7419017
    }
end

function Quest74190:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7419001"] = self.OnSubFinish7419001,
        ["7419002"] = self.OnSubFinish7419002,
        ["7419003"] = self.OnSubFinish7419003,
        ["7419004"] = self.OnSubFinish7419004,
        ["7419005"] = self.OnSubFinish7419005,
        ["7419006"] = self.OnSubFinish7419006,
        ["7419007"] = self.OnSubFinish7419007,
        ["7419008"] = self.OnSubFinish7419008,
        ["7419009"] = self.OnSubFinish7419009,
        ["7419010"] = self.OnSubFinish7419010,
        ["7419011"] = self.OnSubFinish7419011,
        ["7419012"] = self.OnSubFinish7419012,
        ["7419013"] = self.OnSubFinish7419013,
        ["7419014"] = self.OnSubFinish7419014,
        ["7419015"] = self.OnSubFinish7419015,
        ["7419016"] = self.OnSubFinish7419016,
        ["7419017"] = self.OnSubFinish7419017
    }
end

function Quest74190:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74190:Start()
    print("Start")
end

function Quest74190:OnDestroy()
    print("OnDestroy")
end

function Quest74190:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74190:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74190:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74190:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest74190:OnSubStart7419001(arg1)
    print("OnSubStart7419001")
end

function Quest74190:OnSubFinish7419001(arg1)
    print("OnSubFinish7419001")
end

function Quest74190:OnSubStart7419002(arg1)
    print("OnSubStart7419002")
end

function Quest74190:OnSubFinish7419002(arg1)
    print("OnSubFinish7419002")
end

function Quest74190:OnSubStart7419003(arg1)
    print("OnSubStart7419003")
end

function Quest74190:OnSubFinish7419003(arg1)
    print("OnSubFinish7419003")
end

function Quest74190:OnSubStart7419004(arg1)
    print("OnSubStart7419004")
end

function Quest74190:OnSubFinish7419004(arg1)
    print("OnSubFinish7419004")
end

function Quest74190:OnSubStart7419005(arg1)
    print("OnSubStart7419005")
end

function Quest74190:OnSubFinish7419005(arg1)
    print("OnSubFinish7419005")
end

function Quest74190:OnSubStart7419006(arg1)
    print("OnSubStart7419006")
end

function Quest74190:OnSubFinish7419006(arg1)
    print("OnSubFinish7419006")
end

function Quest74190:OnSubStart7419007(arg1)
    print("OnSubStart7419007")
end

function Quest74190:OnSubFinish7419007(arg1)
    print("OnSubFinish7419007")
end

function Quest74190:OnSubStart7419008(arg1)
    print("OnSubStart7419008")
end

function Quest74190:OnSubFinish7419008(arg1)
    print("OnSubFinish7419008")
end

function Quest74190:OnSubStart7419009(arg1)
    print("OnSubStart7419009")
end

function Quest74190:OnSubFinish7419009(arg1)
    print("OnSubFinish7419009")
end

function Quest74190:OnSubStart7419010(arg1)
    print("OnSubStart7419010")
end

function Quest74190:OnSubFinish7419010(arg1)
    print("OnSubFinish7419010")
end

function Quest74190:OnSubStart7419011(arg1)
    print("OnSubStart7419011")
end

function Quest74190:OnSubFinish7419011(arg1)
    print("OnSubFinish7419011")
end

function Quest74190:OnSubStart7419012(arg1)
    print("OnSubStart7419012")
end

function Quest74190:OnSubFinish7419012(arg1)
    print("OnSubFinish7419012")
end

function Quest74190:OnSubStart7419013(arg1)
    print("OnSubStart7419013")
    this:NpcCreateWithNpcTrigger(npcs.Npc21415Data.id, 7419013, 0, 5)
end

function Quest74190:OnSubFinish7419013(arg1)
    print("OnSubFinish7419013")
    this:SafeDestroyQuestNpc(npcs.Npc21415Data.alias, 11)
end

function Quest74190:OnSubStart7419014(arg1)
    print("OnSubStart7419014")
    this:NpcCreateWithNpcTrigger(npcs.Npc21415Data.id, 7419014, 0, 5)
end

function Quest74190:OnSubFinish7419014(arg1)
    print("OnSubFinish7419014")
    this:SafeDestroyQuestNpc(npcs.Npc21415Data.alias, 11)
end

function Quest74190:OnSubStart7419015(arg1)
    print("OnSubStart7419015")
    this:NpcCreateWithNpcTrigger(npcs.Npc21415Data.id, 7419015, 0, 5)
end

function Quest74190:OnSubFinish7419015(arg1)
    print("OnSubFinish7419015")
    this:SafeDestroyQuestNpc(npcs.Npc21415Data.alias, 11)
end

function Quest74190:OnSubStart7419016(arg1)
    print("OnSubStart7419016")
end

function Quest74190:OnSubFinish7419016(arg1)
    print("OnSubFinish7419016")
end

function Quest74190:OnSubStart7419017(arg1)
    print("OnSubStart7419017")
    this:NpcCreateWithNpcTrigger(npcs.Npc21415Data.id, 7419017, 0, 10)
end

function Quest74190:OnSubFinish7419017(arg1)
    print("OnSubFinish7419017")
    this:SafeDestroyQuestNpc(npcs.Npc21415Data.alias, 3)
end

return Quest74190
