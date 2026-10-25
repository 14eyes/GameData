require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71061 = class("Quest71061", QuestActorProxy)
Quest71061.defaultAlias = "Quest71061"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71061:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71061:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7106116"] = self.OnSubStart7106116,
        ["7106101"] = self.OnSubStart7106101,
        ["7106102"] = self.OnSubStart7106102,
        ["7106121"] = self.OnSubStart7106121,
        ["7106103"] = self.OnSubStart7106103,
        ["7106124"] = self.OnSubStart7106124,
        ["7106104"] = self.OnSubStart7106104,
        ["7106110"] = self.OnSubStart7106110,
        ["7106106"] = self.OnSubStart7106106,
        ["7106111"] = self.OnSubStart7106111,
        ["7106112"] = self.OnSubStart7106112,
        ["7106113"] = self.OnSubStart7106113,
        ["7106114"] = self.OnSubStart7106114,
        ["7106115"] = self.OnSubStart7106115,
        ["7106120"] = self.OnSubStart7106120,
        ["7106107"] = self.OnSubStart7106107,
        ["7106123"] = self.OnSubStart7106123,
        ["7106122"] = self.OnSubStart7106122,
        ["7106108"] = self.OnSubStart7106108,
        ["7106109"] = self.OnSubStart7106109
    }
end

function Quest71061:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7106116"] = self.OnSubFinish7106116,
        ["7106101"] = self.OnSubFinish7106101,
        ["7106102"] = self.OnSubFinish7106102,
        ["7106121"] = self.OnSubFinish7106121,
        ["7106103"] = self.OnSubFinish7106103,
        ["7106124"] = self.OnSubFinish7106124,
        ["7106104"] = self.OnSubFinish7106104,
        ["7106110"] = self.OnSubFinish7106110,
        ["7106106"] = self.OnSubFinish7106106,
        ["7106111"] = self.OnSubFinish7106111,
        ["7106112"] = self.OnSubFinish7106112,
        ["7106113"] = self.OnSubFinish7106113,
        ["7106114"] = self.OnSubFinish7106114,
        ["7106115"] = self.OnSubFinish7106115,
        ["7106120"] = self.OnSubFinish7106120,
        ["7106107"] = self.OnSubFinish7106107,
        ["7106123"] = self.OnSubFinish7106123,
        ["7106122"] = self.OnSubFinish7106122,
        ["7106108"] = self.OnSubFinish7106108,
        ["7106109"] = self.OnSubFinish7106109
    }
end

function Quest71061:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71061:Start()
    print("Start")
end

function Quest71061:OnDestroy()
    print("OnDestroy")
end

function Quest71061:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71061:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71061:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71061:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 71061 then
        actorUtils.FinishQuestID(false, 7106121)
    elseif arg1 == 7106188 then
        actorUtils.FinishQuestID(false, 7106124)
    end
end

function Quest71061:OnSubStart7106116(arg1)
    print("OnSubStart7106116")
end

function Quest71061:OnSubFinish7106116(arg1)
    print("OnSubFinish7106116")
end

function Quest71061:OnSubStart7106101(arg1)
    print("OnSubStart7106101")
end

function Quest71061:OnSubFinish7106101(arg1)
    print("OnSubFinish7106101")
end

function Quest71061:OnSubStart7106102(arg1)
    print("OnSubStart7106102")
end

function Quest71061:OnSubFinish7106102(arg1)
    print("OnSubFinish7106102")
end

function Quest71061:OnSubStart7106121(arg1)
    print("OnSubStart7106121")
end

function Quest71061:OnSubFinish7106121(arg1)
    print("OnSubFinish7106121")
end

function Quest71061:OnSubStart7106103(arg1)
    print("OnSubStart7106103")
end

function Quest71061:OnSubFinish7106103(arg1)
    print("OnSubFinish7106103")
end

function Quest71061:OnSubStart7106124(arg1)
    print("OnSubStart7106124")
end

function Quest71061:OnSubFinish7106124(arg1)
    print("OnSubFinish7106124")
end

function Quest71061:OnSubStart7106104(arg1)
    print("OnSubStart7106104")
end

function Quest71061:OnSubFinish7106104(arg1)
    print("OnSubFinish7106104")
end

function Quest71061:OnSubStart7106110(arg1)
    print("OnSubStart7106110")
end

function Quest71061:OnSubFinish7106110(arg1)
    print("OnSubFinish7106110")
end

function Quest71061:OnSubStart7106106(arg1)
    print("OnSubStart7106106")
end

function Quest71061:OnSubFinish7106106(arg1)
    print("OnSubFinish7106106")
end

function Quest71061:OnSubStart7106111(arg1)
    print("OnSubStart7106111")
end

function Quest71061:OnSubFinish7106111(arg1)
    print("OnSubFinish7106111")
end

function Quest71061:OnSubStart7106112(arg1)
    print("OnSubStart7106112")
end

function Quest71061:OnSubFinish7106112(arg1)
    print("OnSubFinish7106112")
end

function Quest71061:OnSubStart7106113(arg1)
    print("OnSubStart7106113")
end

function Quest71061:OnSubFinish7106113(arg1)
    print("OnSubFinish7106113")
end

function Quest71061:OnSubStart7106114(arg1)
    print("OnSubStart7106114")
end

function Quest71061:OnSubFinish7106114(arg1)
    print("OnSubFinish7106114")
end

function Quest71061:OnSubStart7106115(arg1)
    print("OnSubStart7106115")
end

function Quest71061:OnSubFinish7106115(arg1)
    print("OnSubFinish7106115")
end

function Quest71061:OnSubStart7106120(arg1)
    print("OnSubStart7106120")
end

function Quest71061:OnSubFinish7106120(arg1)
    print("OnSubFinish7106120")
end

function Quest71061:OnSubStart7106107(arg1)
    print("OnSubStart7106107")
end

function Quest71061:OnSubFinish7106107(arg1)
    print("OnSubFinish7106107")
end

function Quest71061:OnSubStart7106123(arg1)
    print("OnSubStart7106123")
end

function Quest71061:OnSubFinish7106123(arg1)
    print("OnSubFinish7106123")
end

function Quest71061:OnSubStart7106122(arg1)
    print("OnSubStart7106122")
end

function Quest71061:OnSubFinish7106122(arg1)
    print("OnSubFinish7106122")
end

function Quest71061:OnSubStart7106108(arg1)
    print("OnSubStart7106108")
end

function Quest71061:OnSubFinish7106108(arg1)
    print("OnSubFinish7106108")
    self:ShowBlackScreen(0.5, 2, 0.5, function(arg1)
        actorUtils.FinishQuestID(false, 7106122)
    end, nil, nil, "QUEST_Message_Q71061", false, true)
end

function Quest71061:OnSubStart7106109(arg1)
    print("OnSubStart7106109")
end

function Quest71061:OnSubFinish7106109(arg1)
    print("OnSubFinish7106109")
end

return Quest71061
