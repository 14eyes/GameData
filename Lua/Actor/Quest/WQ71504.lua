require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71504 = class("Quest71504", QuestActorProxy)
Quest71504.defaultAlias = "Quest71504"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest71504:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71504:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7150404"] = self.OnSubStart7150404,
        ["7150401"] = self.OnSubStart7150401,
        ["7150402"] = self.OnSubStart7150402,
        ["7150403"] = self.OnSubStart7150403
    }
end

function Quest71504:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7150404"] = self.OnSubFinish7150404,
        ["7150401"] = self.OnSubFinish7150401,
        ["7150402"] = self.OnSubFinish7150402,
        ["7150403"] = self.OnSubFinish7150403
    }
end

function Quest71504:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71504:Start()
    print("Start")
end

function Quest71504:OnDestroy()
    print("OnDestroy")
end

function Quest71504:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71504:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71504:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71504:CustmiseFunction() end

function Quest71504:OnSubStart7150404(arg1)
    print("OnSubStart7150404")
end

function Quest71504:OnSubFinish7150404(arg1)
    print("OnSubFinish7150404")
end

function Quest71504:OnSubStart7150401(arg1)
    print("OnSubStart7150401")
    self:CreateQuestNpc(arg1, npcs.Npc30181Data.id, 1)
end

function Quest71504:OnSubFinish7150401(arg1)
    print("OnSubFinish7150401")
end

function Quest71504:OnSubStart7150402(arg1)
    print("OnSubStart7150402")
    self:CreateQuestNpc(arg1, npcs.Npc30184Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc30183Data.id, 2)
end

function Quest71504:OnSubFinish7150402(arg1)
    print("OnSubFinish7150402")
    self:SafeDestroyQuestNpc(npcs.Npc30181Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc30184Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc30183Data.alias, 6)
end

function Quest71504:OnSubStart7150403(arg1)
    print("OnSubStart7150403")
end

function Quest71504:OnSubFinish7150403(arg1)
    print("OnSubFinish7150403")
end

return Quest71504
