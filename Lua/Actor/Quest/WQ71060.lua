require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71060 = class("Quest71060", QuestActorProxy)
Quest71060.defaultAlias = "Quest71060"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest71060:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71060:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7106001"] = self.OnSubStart7106001,
        ["7106002"] = self.OnSubStart7106002,
        ["7106003"] = self.OnSubStart7106003
    }
end

function Quest71060:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7106001"] = self.OnSubFinish7106001,
        ["7106002"] = self.OnSubFinish7106002,
        ["7106003"] = self.OnSubFinish7106003
    }
end

function Quest71060:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71060:Start()
    print("Start")
end

function Quest71060:OnDestroy()
    print("OnDestroy")
end

function Quest71060:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71060:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71060:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71060:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest71060:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 7106001 then
        self:ShowReadingDialog(101712)
    end
end

function Quest71060:OnSubStart7106001(arg1)
    print("OnSubStart7106001")
    self:CreateQuestNpc(arg1, npcs.Npc20535Data.id, 1)
end

function Quest71060:OnSubFinish7106001(arg1)
    print("OnSubFinish7106001")
    self:NpcDestroy(npcs.Npc20535Data.alias, 6)
end

function Quest71060:OnSubStart7106002(arg1)
    print("OnSubStart7106002")
end

function Quest71060:OnSubFinish7106002(arg1)
    print("OnSubFinish7106002")
end

return Quest71060
