require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73065 = class("Quest73065", QuestActorProxy)
Quest73065.defaultAlias = "Quest73065"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73065:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73065:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7306501"] = self.OnSubStart7306501,
        ["7306502"] = self.OnSubStart7306502,
        ["7306503"] = self.OnSubStart7306503,
        ["7306504"] = self.OnSubStart7306504,
        ["7306505"] = self.OnSubStart7306505,
        ["7306506"] = self.OnSubStart7306506,
        ["7306507"] = self.OnSubStart7306507,
        ["7306508"] = self.OnSubStart7306508,
        ["7306509"] = self.OnSubStart7306509,
        ["7306510"] = self.OnSubStart7306510,
        ["7306511"] = self.OnSubStart7306511,
        ["7306512"] = self.OnSubStart7306512
    }
end

function Quest73065:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7306501"] = self.OnSubFinish7306501,
        ["7306502"] = self.OnSubFinish7306502,
        ["7306503"] = self.OnSubFinish7306503,
        ["7306504"] = self.OnSubFinish7306504,
        ["7306505"] = self.OnSubFinish7306505,
        ["7306506"] = self.OnSubFinish7306506,
        ["7306507"] = self.OnSubFinish7306507,
        ["7306508"] = self.OnSubFinish7306508,
        ["7306509"] = self.OnSubFinish7306509,
        ["7306510"] = self.OnSubFinish7306510,
        ["7306511"] = self.OnSubFinish7306511,
        ["7306512"] = self.OnSubFinish7306512
    }
end

function Quest73065:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73065:Start()
    print("Start")
end

function Quest73065:OnDestroy()
    print("OnDestroy")
end

function Quest73065:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73065:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73065:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73065:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest73065:OnSubStart7306501(arg1)
    print("OnSubStart7306501")
    self:NpcCreate(arg1, npcs.Npc4219Data.id, 1)
end

function Quest73065:OnSubFinish7306501(arg1)
    print("OnSubFinish7306501")
end

function Quest73065:OnSubStart7306502(arg1)
    print("OnSubStart7306502")
    self:CallDelay(3, function(arg1)
        arg1:EnablePlayerInput(true)
        actorUtils.FinishQuestID(false, 7306502)
    end)

    self:EnablePlayerInput(false)
    self:CountDownUIStart(10, 0, 3)
end

function Quest73065:OnSubFinish7306502(arg1)
    print("OnSubFinish7306502")
end

function Quest73065:OnSubStart7306503(arg1)
    print("OnSubStart7306503")
end

function Quest73065:OnSubFinish7306503(arg1)
    print("OnSubFinish7306503")
    self:ShowBlackScreen(0.5, 2, 0.5, function(arg1)
        arg1:RequestInteraction(npcs.Npc4219Data.alias)
    end, nil, nil, "", false, true)
end

function Quest73065:OnSubStart7306504(arg1)
    print("OnSubStart7306504")
end

function Quest73065:OnSubFinish7306504(arg1)
    print("OnSubFinish7306504")
end

function Quest73065:OnSubStart7306505(arg1)
    print("OnSubStart7306505")
end

function Quest73065:OnSubFinish7306505(arg1)
    print("OnSubFinish7306505")
end

function Quest73065:OnSubStart7306506(arg1)
    print("OnSubStart7306506")
end

function Quest73065:OnSubFinish7306506(arg1)
    print("OnSubFinish7306506")
end

function Quest73065:OnSubStart7306507(arg1)
    print("OnSubStart7306507")
end

function Quest73065:OnSubFinish7306507(arg1)
    print("OnSubFinish7306507")
end

function Quest73065:OnSubStart7306508(arg1)
    print("OnSubStart7306508")
end

function Quest73065:OnSubFinish7306508(arg1)
    print("OnSubFinish7306508")
end

function Quest73065:OnSubStart7306509(arg1)
    print("OnSubStart7306509")
end

function Quest73065:OnSubFinish7306509(arg1)
    print("OnSubFinish7306509")
end

function Quest73065:OnSubStart7306510(arg1)
    print("OnSubStart7306510")
end

function Quest73065:OnSubFinish7306510(arg1)
    print("OnSubFinish7306510")
end

function Quest73065:OnSubStart7306511(arg1)
    print("OnSubStart7306511")
end

function Quest73065:OnSubFinish7306511(arg1)
    print("OnSubFinish7306511")
end

function Quest73065:OnSubStart7306512(arg1)
    print("OnSubStart7306512")
end

function Quest73065:OnSubFinish7306512(arg1)
    print("OnSubFinish7306512")
end

return Quest73065
