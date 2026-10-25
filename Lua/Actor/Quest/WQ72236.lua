require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72236 = class("Quest72236", QuestActorProxy)
Quest72236.defaultAlias = "Quest72236"
local clientData
local mainID
local actorAlias
local subIDs
local datas

function Quest72236:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    datas = clientData.Datas
end

function Quest72236:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7223601"] = self.OnSubStart7223601, ["7223602"] = self.OnSubStart7223602}
end

function Quest72236:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7223601"] = self.OnSubFinish7223601, ["7223602"] = self.OnSubFinish7223602}
end

function Quest72236:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72236:Start()
    print("Start")
end

function Quest72236:OnDestroy()
    print("OnDestroy")
end

function Quest72236:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72236:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72236:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72236:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest72236:OnSubStart7223601(arg1)
    print("OnSubStart7223601")
end

function Quest72236:OnSubFinish7223601(arg1)
    print("OnSubFinish7223601")
end

function Quest72236:OnSubStart7223602(arg1)
    print("OnSubStart7223602")
    actorMgr:CreateActorWithPos("Q7223602Trigger", "Actor/Gadget/Q7223602Trigger", 70900002, 0, sceneData:GetDummyPoint(5, "Q7223602_guide").pos, sceneData:GetDummyPoint(5, "Q7223602_guide").rot, true, false, 5)
end

function Quest72236:OnSubFinish7223602(arg1)
    print("OnSubFinish7223602")
    self:ActorDestroy("Q7223602Trigger")
end

return Quest72236
