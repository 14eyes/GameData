require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79001 = class("Quest79001", QuestActorProxy)
Quest79001.defaultAlias = "Quest79001"
local clientData
local mainID
local actorAlias
local subIDs
local datas

function Quest79001:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    datas = clientData.Datas
end

function Quest79001:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7900109"] = self.OnSubStart7900109,
        ["7900101"] = self.OnSubStart7900101,
        ["7900102"] = self.OnSubStart7900102,
        ["7900103"] = self.OnSubStart7900103,
        ["7900105"] = self.OnSubStart7900105,
        ["7900106"] = self.OnSubStart7900106,
        ["7900107"] = self.OnSubStart7900107,
        ["7900108"] = self.OnSubStart7900108,
        ["7900104"] = self.OnSubStart7900104
    }
end

function Quest79001:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7900109"] = self.OnSubFinish7900109,
        ["7900101"] = self.OnSubFinish7900101,
        ["7900102"] = self.OnSubFinish7900102,
        ["7900103"] = self.OnSubFinish7900103,
        ["7900105"] = self.OnSubFinish7900105,
        ["7900106"] = self.OnSubFinish7900106,
        ["7900107"] = self.OnSubFinish7900107,
        ["7900108"] = self.OnSubFinish7900108,
        ["7900104"] = self.OnSubFinish7900104
    }
end

function Quest79001:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7900109"] = self.OnSubFailed7900109,
        ["7900101"] = self.OnSubFailed7900101,
        ["7900102"] = self.OnSubFailed7900102,
        ["7900103"] = self.OnSubFailed7900103,
        ["7900105"] = self.OnSubFailed7900105,
        ["7900106"] = self.OnSubFailed7900106,
        ["7900107"] = self.OnSubFailed7900107,
        ["7900108"] = self.OnSubFailed7900108,
        ["7900104"] = self.OnSubFailed7900104
    }
end

function Quest79001:Start()
    print("Start")
end

function Quest79001:OnDestroy()
    print("OnDestroy")
end

function Quest79001:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79001:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79001:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79001:OnSubStart7900109(arg1)
    print("OnSubStart7900109")
end

function Quest79001:OnSubFinish7900109(arg1)
    print("OnSubFinish7900109")
end

function Quest79001:OnSubFailed7900109(arg1)
    print("OnSubFailed7900109")
end

function Quest79001:OnSubStart7900101(arg1)
    print("OnSubStart7900101")
end

function Quest79001:OnSubFinish7900101(arg1)
    print("OnSubFinish7900101")
end

function Quest79001:OnSubFailed7900101(arg1)
    print("OnSubFailed7900101")
end

function Quest79001:OnSubStart7900102(arg1)
    print("OnSubStart7900102")
end

function Quest79001:OnSubFinish7900102(arg1)
    print("OnSubFinish7900102")
end

function Quest79001:OnSubFailed7900102(arg1)
    print("OnSubFailed7900102")
end

function Quest79001:OnSubStart7900103(arg1)
    print("OnSubStart7900103")
end

function Quest79001:OnSubFinish7900103(arg1)
    print("OnSubFinish7900103")
end

function Quest79001:OnSubFailed7900103(arg1)
    print("OnSubFailed7900103")
end

function Quest79001:OnSubStart7900105(arg1)
    print("OnSubStart7900105")
end

function Quest79001:OnSubFinish7900105(arg1)
    print("OnSubFinish7900105")
    self:TransmitPlayerById(arg1, datas.TransmitPoint.point_id)
end

function Quest79001:OnSubFailed7900105(arg1)
    print("OnSubFailed7900105")
end

function Quest79001:OnSubStart7900106(arg1)
    print("OnSubStart7900106")
end

function Quest79001:OnSubFinish7900106(arg1)
    print("OnSubFinish7900106")
end

function Quest79001:OnSubFailed7900106(arg1)
    print("OnSubFailed7900106")
end

function Quest79001:OnSubStart7900107(arg1)
    print("OnSubStart7900107")
end

function Quest79001:OnSubFinish7900107(arg1)
    print("OnSubFinish7900107")
end

function Quest79001:OnSubFailed7900107(arg1)
    print("OnSubFailed7900107")
end

function Quest79001:OnSubStart7900108(arg1)
    print("OnSubStart7900108")
end

function Quest79001:OnSubFinish7900108(arg1)
    print("OnSubFinish7900108")
end

function Quest79001:OnSubFailed7900108(arg1)
    print("OnSubFailed7900108")
end

function Quest79001:OnSubStart7900104(arg1)
    print("OnSubStart7900104")
end

function Quest79001:OnSubFinish7900104(arg1)
    print("OnSubFinish7900104")
end

function Quest79001:OnSubFailed7900104(arg1)
    print("OnSubFailed7900104")
end

return Quest79001
