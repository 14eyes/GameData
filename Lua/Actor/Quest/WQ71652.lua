require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71652 = class("Quest71652", QuestActorProxy)
Quest71652.defaultAlias = "Quest71652"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71652:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71652:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7165201"] = self.OnSubStart7165201,
        ["7165202"] = self.OnSubStart7165202,
        ["7165203"] = self.OnSubStart7165203,
        ["7165204"] = self.OnSubStart7165204,
        ["7165205"] = self.OnSubStart7165205
    }
end

function Quest71652:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7165201"] = self.OnSubFinish7165201,
        ["7165202"] = self.OnSubFinish7165202,
        ["7165203"] = self.OnSubFinish7165203,
        ["7165204"] = self.OnSubFinish7165204,
        ["7165205"] = self.OnSubFinish7165205
    }
end

function Quest71652:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7165201"] = self.OnSubFailed7165201,
        ["7165202"] = self.OnSubFailed7165202,
        ["7165203"] = self.OnSubFailed7165203,
        ["7165204"] = self.OnSubFailed7165204,
        ["7165205"] = self.OnSubFailed7165205
    }
end

function Quest71652:Start()
    print("Start")
end

function Quest71652:OnDestroy()
    print("OnDestroy")
end

function Quest71652:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71652:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71652:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71652:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        actorMgr:GetActor(actorAlias):FinishQuestID(false, 7165205)
    end
end

function Quest71652:OnSubStart7165201(arg1)
    print("OnSubStart7165201")
end

function Quest71652:OnSubFinish7165201(arg1)
    print("OnSubFinish7165201")
end

function Quest71652:OnSubFailed7165201(arg1)
    print("OnSubFailed7165201")
end

function Quest71652:OnSubStart7165202(arg1)
    print("OnSubStart7165202")
end

function Quest71652:OnSubFinish7165202(arg1)
    print("OnSubFinish7165202")
end

function Quest71652:OnSubFailed7165202(arg1)
    print("OnSubFailed7165202")
end

function Quest71652:OnSubStart7165203(arg1)
    print("OnSubStart7165203")
end

function Quest71652:OnSubFinish7165203(arg1)
    print("OnSubFinish7165203")
    globalActor:StartGuide("GuideChannellerSlabEquip")
end

function Quest71652:OnSubFailed7165203(arg1)
    print("OnSubFailed7165203")
end

function Quest71652:OnSubStart7165204(arg1)
    print("OnSubStart7165204")
    self:FinishQuestID(false, 7165204)
end

function Quest71652:OnSubFinish7165204(arg1)
    print("OnSubFinish7165204")
end

function Quest71652:OnSubFailed7165204(arg1)
    print("OnSubFailed7165204")
end

function Quest71652:OnSubStart7165205(arg1)
    print("OnSubStart7165205")
end

function Quest71652:OnSubFinish7165205(arg1)
    print("OnSubFinish7165205")
    self:ActionSafeCall(function()
        actorUtils.ShowChannellerSlabStagePage(3)
    end)
end

function Quest71652:OnSubFailed7165205(arg1)
    print("OnSubFailed7165205")
end

return Quest71652
