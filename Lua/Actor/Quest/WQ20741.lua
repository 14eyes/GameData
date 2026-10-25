require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20741 = class("Quest20741", QuestActorProxy)
Quest20741.defaultAlias = "Quest20741"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest20741:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest20741:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2074101"] = self.OnSubStart2074101,
        ["2074102"] = self.OnSubStart2074102,
        ["2074103"] = self.OnSubStart2074103,
        ["2074104"] = self.OnSubStart2074104,
        ["2074105"] = self.OnSubStart2074105
    }
end

function Quest20741:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2074101"] = self.OnSubFinish2074101,
        ["2074102"] = self.OnSubFinish2074102,
        ["2074103"] = self.OnSubFinish2074103,
        ["2074104"] = self.OnSubFinish2074104,
        ["2074105"] = self.OnSubFinish2074105
    }
end

function Quest20741:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2074101"] = self.OnSubFailed2074101,
        ["2074102"] = self.OnSubFailed2074102,
        ["2074103"] = self.OnSubFailed2074103,
        ["2074104"] = self.OnSubFailed2074104,
        ["2074105"] = self.OnSubFailed2074105
    }
end

function Quest20741:Start()
    print("Start")
end

function Quest20741:OnDestroy()
    print("OnDestroy")
end

function Quest20741:OnMainFinished(arg1)
    print("OnMainFinished")
    self:ShowBlackScreen(0.2, 1, 0.5, self.NewFunction, nil, nil, "")
end

function Quest20741:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest20741:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:NotifyTo(npcs.Npc1429Data.alias, 0, true)
end

function Quest20741:NewFunction()
    print("NewFunction")
    self:NotifyTo(npcs.Npc1429Data.alias, 0, true)
end

function Quest20741:OnSubStart2074101(arg1)
    print("OnSubStart2074101")
end

function Quest20741:OnSubFinish2074101(arg1)
    print("OnSubFinish2074101")
    self:NotifyTo(npcs.Npc1429Data.alias, 2, true)
end

function Quest20741:OnSubFailed2074101(arg1)
    print("OnSubFailed2074101")
end

function Quest20741:OnSubStart2074102(arg1)
    print("OnSubStart2074102")
    self:NotifyTo(npcs.Npc1429Data.alias, 2, true)
end

function Quest20741:OnSubFinish2074102(arg1)
    print("OnSubFinish2074102")
end

function Quest20741:OnSubFailed2074102(arg1)
    print("OnSubFailed2074102")
end

function Quest20741:OnSubStart2074103(arg1)
    print("OnSubStart2074103")
    self:NotifyTo(npcs.Npc1429Data.alias, 2, true)
end

function Quest20741:OnSubFinish2074103(arg1)
    print("OnSubFinish2074103")
end

function Quest20741:OnSubFailed2074103(arg1)
    print("OnSubFailed2074103")
end

function Quest20741:OnSubStart2074104(arg1)
    print("OnSubStart2074104")
    self:NotifyTo(npcs.Npc1429Data.alias, 2, true)
end

function Quest20741:OnSubFinish2074104(arg1)
    print("OnSubFinish2074104")
    self:PlayEffect("Eff_Plant_Dandelion_Flora", sceneData:GetDummyPoint(3, "Q20741_Target").pos)
    self:PlayEffect("Eff_Plant_Dandelion_Flora", sceneData:GetDummyPoint(3, "Q20741_Target3").pos)
    self:PlayEffect("Eff_Plant_Dandelion_Flora", sceneData:GetDummyPoint(3, "Q20741_Target4").pos)
end

function Quest20741:OnSubFailed2074104(arg1)
    print("OnSubFailed2074104")
end

function Quest20741:OnSubStart2074105(arg1)
    print("OnSubStart2074105")
    self:NotifyTo(npcs.Npc1429Data.alias, 2, true)
end

function Quest20741:OnSubFinish2074105(arg1)
    print("OnSubFinish2074105")
end

function Quest20741:OnSubFailed2074105(arg1)
    print("OnSubFailed2074105")
end

return Quest20741
