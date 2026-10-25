require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73505 = class("Quest73505", QuestActorProxy)
Quest73505.defaultAlias = "Quest73505"
local clientData
local mainID
local actorAlias
local subIDs

function Quest73505:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest73505:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7350501"] = self.OnSubStart7350501, ["7350502"] = self.OnSubStart7350502}
end

function Quest73505:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7350501"] = self.OnSubFinish7350501, ["7350502"] = self.OnSubFinish7350502}
end

function Quest73505:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73505:Start()
    print("Start")
end

function Quest73505:OnDestroy()
    print("OnDestroy")
end

function Quest73505:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73505:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73505:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73505:OnSubStart7350501(arg1)
    print("OnSubStart7350501")
end

function Quest73505:OnSubFinish7350501(arg1)
    print("OnSubFinish7350501")
    local subQuestState = self:GetSubQuestState(7350101)
    if self:GetQuestVar(7350501, 0) == 1 or subQuestState == 2 then
        print("\230\146\173\232\191\135\230\136\150\228\186\140\233\152\182\230\174\181\230\156\170\229\174\140\230\136\144\229\175\188\232\135\180\228\184\141\230\146\173")
    else
        self:ActionSafeCall(function(arg1)
            arg1:ShowTutorialDialog(1212)
            arg1:SetQuestVarByMainId(0, 1)
        end)
    end
end

function Quest73505:OnSubStart7350502(arg1)
    print("OnSubStart7350502")
end

function Quest73505:OnSubFinish7350502(arg1)
    print("OnSubFinish7350502")
    if self:GetQuestVar(7350502, 0) == 1 then
        print("\229\183\178\231\187\143\230\146\173\232\191\135")
    else
        self:ActionSafeCall(function(arg1)
            arg1:ShowTutorialDialog(1212)
            arg1:SetQuestVarByMainId(0, 1)
        end)
    end
end

return Quest73505
