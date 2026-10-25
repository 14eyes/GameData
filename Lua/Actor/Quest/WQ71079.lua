require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71079 = class("Quest71079", QuestActorProxy)
Quest71079.defaultAlias = "Quest71079"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71079:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71079:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7107901"] = self.OnSubStart7107901,
        ["7107902"] = self.OnSubStart7107902,
        ["7107903"] = self.OnSubStart7107903,
        ["7107904"] = self.OnSubStart7107904,
        ["7107905"] = self.OnSubStart7107905,
        ["7107906"] = self.OnSubStart7107906,
        ["7107907"] = self.OnSubStart7107907,
        ["7107908"] = self.OnSubStart7107908,
        ["7107909"] = self.OnSubStart7107909,
        ["7107910"] = self.OnSubStart7107910,
        ["7107911"] = self.OnSubStart7107911
    }
end

function Quest71079:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7107901"] = self.OnSubFinish7107901,
        ["7107902"] = self.OnSubFinish7107902,
        ["7107903"] = self.OnSubFinish7107903,
        ["7107904"] = self.OnSubFinish7107904,
        ["7107905"] = self.OnSubFinish7107905,
        ["7107906"] = self.OnSubFinish7107906,
        ["7107907"] = self.OnSubFinish7107907,
        ["7107908"] = self.OnSubFinish7107908,
        ["7107909"] = self.OnSubFinish7107909,
        ["7107910"] = self.OnSubFinish7107910,
        ["7107911"] = self.OnSubFinish7107911
    }
end

function Quest71079:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71079:Start()
    print("Start")
end

function Quest71079:OnDestroy()
    print("OnDestroy")
end

function Quest71079:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71079:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71079:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71079:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 710792214 then
        self:ShowReadingDialog(101783)
    elseif arg1 == 710792215 then
        self:ShowReadingDialog(101784)
    elseif arg1 == 710792216 then
        self:ShowReadingDialog(101785)
    elseif arg1 == 710792217 then
        self:ShowReadingDialog(101786)
    elseif arg1 == 710792218 then
        self:ShowReadingDialog(101787)
    elseif arg1 == 710792219 then
        self:ShowReadingDialog(101788)
    elseif arg1 == 710792220 then
        self:ShowReadingDialog(101789)
    elseif arg1 == 710792221 then
        self:ShowReadingDialog(101790)
    elseif arg1 == 710792222 then
        self:ShowReadingDialog(101791)
    elseif arg1 == 710792223 then
        self:ShowReadingDialog(101792)
    elseif arg1 == 710792224 then
        self:ShowReadingDialog(101793)
    elseif arg1 == 710792225 then
        self:ShowReadingDialog(101794)
    end
end

function Quest71079:OnSubStart7107901(arg1)
    print("OnSubStart7107901")
end

function Quest71079:OnSubFinish7107901(arg1)
    print("OnSubFinish7107901")
end

function Quest71079:OnSubStart7107902(arg1)
    print("OnSubStart7107902")
end

function Quest71079:OnSubFinish7107902(arg1)
    print("OnSubFinish7107902")
end

function Quest71079:OnSubStart7107903(arg1)
    print("OnSubStart7107903")
end

function Quest71079:OnSubFinish7107903(arg1)
    print("OnSubFinish7107903")
end

function Quest71079:OnSubStart7107904(arg1)
    print("OnSubStart7107904")
end

function Quest71079:OnSubFinish7107904(arg1)
    print("OnSubFinish7107904")
end

function Quest71079:OnSubStart7107905(arg1)
    print("OnSubStart7107905")
end

function Quest71079:OnSubFinish7107905(arg1)
    print("OnSubFinish7107905")
end

function Quest71079:OnSubStart7107906(arg1)
    print("OnSubStart7107906")
end

function Quest71079:OnSubFinish7107906(arg1)
    print("OnSubFinish7107906")
end

function Quest71079:OnSubStart7107907(arg1)
    print("OnSubStart7107907")
end

function Quest71079:OnSubFinish7107907(arg1)
    print("OnSubFinish7107907")
end

function Quest71079:OnSubStart7107908(arg1)
    print("OnSubStart7107908")
end

function Quest71079:OnSubFinish7107908(arg1)
    print("OnSubFinish7107908")
end

function Quest71079:OnSubStart7107909(arg1)
    print("OnSubStart7107909")
end

function Quest71079:OnSubFinish7107909(arg1)
    print("OnSubFinish7107909")
end

function Quest71079:OnSubStart7107910(arg1)
    print("OnSubStart7107910")
end

function Quest71079:OnSubFinish7107910(arg1)
    print("OnSubFinish7107910")
end

function Quest71079:OnSubStart7107911(arg1)
    print("OnSubStart7107911")
end

function Quest71079:OnSubFinish7107911(arg1)
    print("OnSubFinish7107911")
end

return Quest71079
