require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71814 = class("Quest71814", QuestActorProxy)
Quest71814.defaultAlias = "Quest71814"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest71814:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest71814:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7181401"] = self.OnSubStart7181401,
        ["7181402"] = self.OnSubStart7181402,
        ["7181403"] = self.OnSubStart7181403,
        ["7181404"] = self.OnSubStart7181404,
        ["7181405"] = self.OnSubStart7181405
    }
end

function Quest71814:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7181401"] = self.OnSubFinish7181401,
        ["7181402"] = self.OnSubFinish7181402,
        ["7181403"] = self.OnSubFinish7181403,
        ["7181404"] = self.OnSubFinish7181404,
        ["7181405"] = self.OnSubFinish7181405
    }
end

function Quest71814:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7181401"] = self.OnSubFailed7181401,
        ["7181402"] = self.OnSubFailed7181402,
        ["7181403"] = self.OnSubFailed7181403,
        ["7181404"] = self.OnSubFailed7181404,
        ["7181405"] = self.OnSubFailed7181405
    }
end

function Quest71814:Start()
    print("Start")
end

function Quest71814:OnDestroy()
    print("OnDestroy")
end

function Quest71814:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71814:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71814:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71814:DestroyNpc()
    print("DestroyNpc")
    self:DestroyQuestNpcActor(npcs.Npc2143Data.alias, 3)
end

function Quest71814:OnSubStart7181401(arg1)
    print("OnSubStart7181401")
end

function Quest71814:OnSubFinish7181401(arg1)
    print("OnSubFinish7181401")
end

function Quest71814:OnSubFailed7181401(arg1)
    print("OnSubFailed7181401")
end

function Quest71814:OnSubStart7181402(arg1)
    print("OnSubStart7181402")
end

function Quest71814:OnSubFinish7181402(arg1)
    print("OnSubFinish7181402")
    self:NarratorOnlyTask(datas.Paimon1, nil, "")
end

function Quest71814:OnSubFailed7181402(arg1)
    print("OnSubFailed7181402")
end

function Quest71814:OnSubStart7181403(arg1)
    print("OnSubStart7181403")
end

function Quest71814:OnSubFinish7181403(arg1)
    print("OnSubFinish7181403")
    self:NarratorOnlyTask(datas.Paimon2, nil, "")
end

function Quest71814:OnSubFailed7181403(arg1)
    print("OnSubFailed7181403")
end

function Quest71814:OnSubStart7181404(arg1)
    print("OnSubStart7181404")
end

function Quest71814:OnSubFinish7181404(arg1)
    print("OnSubFinish7181404")
end

function Quest71814:OnSubFailed7181404(arg1)
    print("OnSubFailed7181404")
end

function Quest71814:OnSubStart7181405(arg1)
    print("OnSubStart7181405")
    self:CreateQuestNpc(arg1, npcs.Npc2143Data.id, 1)
end

function Quest71814:OnSubFinish7181405(arg1)
    print("OnSubFinish7181405")
    self:ShowBlackScreen(0.3, 1.5, 0.3, self.DestroyNpc, nil, nil, "")
end

function Quest71814:OnSubFailed7181405(arg1)
    print("OnSubFailed7181405")
end

return Quest71814
