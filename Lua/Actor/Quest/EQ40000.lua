require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40000 = class("Quest40000", QuestActorProxy)
Quest40000.defaultAlias = "Quest40000"
local clientData
local mainID
local actorAlias
local subIDs
local datas

function Quest40000:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    datas = clientData.Datas
end

function Quest40000:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4000001"] = self.OnSubStart4000001,
        ["4000002"] = self.OnSubStart4000002,
        ["4000003"] = self.OnSubStart4000003
    }
end

function Quest40000:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4000001"] = self.OnSubFinish4000001,
        ["4000002"] = self.OnSubFinish4000002,
        ["4000003"] = self.OnSubFinish4000003
    }
end

function Quest40000:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4000001"] = self.OnSubFailed4000001,
        ["4000002"] = self.OnSubFailed4000002,
        ["4000003"] = self.OnSubFailed4000003
    }
end

function Quest40000:Start()
    print("Start")
end

function Quest40000:OnDestroy()
    print("OnDestroy")
end

function Quest40000:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40000:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40000:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest40000:OnSubStart4000001(arg1)
    print("OnSubStart4000001")
    self.CallDelay(self, 5, function()
        self:FinishQuestID(false, 4000001)
    end)
end

function Quest40000:OnSubFinish4000001(arg1)
    print("OnSubFinish4000001")
    self:NarratorOnlyTask(datas.NarratorTable, nil, "")
end

function Quest40000:OnSubFailed4000001(arg1)
    print("OnSubFailed4000001")
end

function Quest40000:OnSubStart4000002(arg1)
    print("OnSubStart4000002")
end

function Quest40000:OnSubFinish4000002(arg1)
    print("OnSubFinish4000002")
end

function Quest40000:OnSubFailed4000002(arg1)
    print("OnSubFailed4000002")
end

function Quest40000:OnSubStart4000003(arg1)
    print("OnSubStart4000003")
end

function Quest40000:OnSubFinish4000003(arg1)
    print("OnSubFinish4000003")
end

function Quest40000:OnSubFailed4000003(arg1)
    print("OnSubFailed4000003")
end

function Quest40000:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        print("Talk 40000 Invoke")
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 4000002)
        end
    end
end

return Quest40000
