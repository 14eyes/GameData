require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70519 = class("Quest70519", QuestActorProxy)
Quest70519.defaultAlias = "Quest70519"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest70519:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest70519:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7051901"] = self.OnSubStart7051901,
        ["7051902"] = self.OnSubStart7051902,
        ["7051903"] = self.OnSubStart7051903
    }
end

function Quest70519:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7051901"] = self.OnSubFinish7051901,
        ["7051902"] = self.OnSubFinish7051902,
        ["7051903"] = self.OnSubFinish7051903
    }
end

function Quest70519:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70519:Start()
    print("Start")
end

function Quest70519:OnDestroy()
    print("OnDestroy")
end

function Quest70519:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70519:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70519:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ClearNarratorTask()
    self:SafeDestroyQuestNpc(npcs.Npc30234Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 3)
end

function Quest70519:NpcCreateWithTrigger(arg1, arg2, arg3)
    self:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, 5)
end

function Quest70519:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 7051903)
    end
end

function Quest70519:OnSubStart7051901(arg1)
    print("OnSubStart7051901")
    actorUtils.FinishQuestID(false, 7051901)
end

function Quest70519:OnSubFinish7051901(arg1)
    print("OnSubFinish7051901")
    self:NarratorOnlyTaskByData(datas.NarratorWithId)
end

function Quest70519:OnSubStart7051902(arg1)
    print("OnSubStart7051902")
    self:NpcCreateWithTrigger(npcs.Npc30234Data.id, 7051902, 1)
end

function Quest70519:OnSubFinish7051902(arg1)
    print("OnSubFinish7051902")
    self:SafeDestroyQuestNpc(npcs.Npc30234Data.alias, 3)
end

function Quest70519:OnSubStart7051903(arg1)
    print("OnSubStart7051903")
end

function Quest70519:OnSubFinish7051903(arg1)
    print("OnSubFinish7051903")
end

return Quest70519
