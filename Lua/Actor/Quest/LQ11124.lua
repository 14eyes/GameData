require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest11124 = class("Quest11124", QuestActorProxy)
Quest11124.defaultAlias = "Quest11124"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest11124:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest11124:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1112401"] = self.OnSubStart1112401, ["1112402"] = self.OnSubStart1112402}
end

function Quest11124:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1112401"] = self.OnSubFinish1112401, ["1112402"] = self.OnSubFinish1112402}
end

function Quest11124:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1112401"] = self.OnSubFailed1112401, ["1112402"] = self.OnSubFailed1112402}
end

function Quest11124:Start()
    print("Start")
end

function Quest11124:OnDestroy()
    print("OnDestroy")
end

function Quest11124:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest11124:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest11124:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest11124:InvokeOnInteraction(arg1)
    print("paramparamparam")
    if arg1 == 1112401 then
        print("param1112401")
        self:SetQuestVarByMainId(0, 2)
    end
end

function Quest11124:OnSubStart1112401(arg1)
    print("OnSubStart1112401")
    self:CreateQuestNpc(arg1, npcs.Npc10232Data.id, 1)
    actorMgr:CreateActorWithPos(datas.Q11124Trigger_.alias, datas.Q11124Trigger_.script, datas.Q11124Trigger_.id, 0, datas.Q11124Trigger_.point.pos, datas.Q11124Trigger_.point.rot, true, false, 3)
    self:GetQuestNpcActor(npcs.Npc10232Data.alias):EnableHeadCtrl(false)
end

function Quest11124:OnSubFinish1112401(arg1)
    print("OnSubFinish1112401")
    self:SafeDestroyQuestNpc(npcs.Npc10232Data.alias, 3)
end

function Quest11124:OnSubFailed1112401(arg1)
    print("OnSubFailed1112401")
end

function Quest11124:OnSubStart1112402(arg1)
    print("OnSubStart1112402")
end

function Quest11124:OnSubFinish1112402(arg1)
    print("OnSubFinish1112402")
end

function Quest11124:OnSubFailed1112402(arg1)
    print("OnSubFailed1112402")
end

return Quest11124
