require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70026 = class("Quest70026", QuestActorProxy)
Quest70026.defaultAlias = "Quest70026"
local clientData
local mainID
local actorAlias
local subIDs
local datas

function Quest70026:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    datas = clientData.Datas
end

function Quest70026:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7002601"] = self.OnSubStart7002601,
        ["7002602"] = self.OnSubStart7002602,
        ["7002603"] = self.OnSubStart7002603,
        ["7002604"] = self.OnSubStart7002604
    }
end

function Quest70026:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7002601"] = self.OnSubFinish7002601,
        ["7002602"] = self.OnSubFinish7002602,
        ["7002603"] = self.OnSubFinish7002603,
        ["7002604"] = self.OnSubFinish7002604
    }
end

function Quest70026:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7002601"] = self.OnSubFailed7002601,
        ["7002602"] = self.OnSubFailed7002602,
        ["7002603"] = self.OnSubFailed7002603,
        ["7002604"] = self.OnSubFailed7002604
    }
end

function Quest70026:Start()
    print("Start")
end

function Quest70026:OnDestroy()
    print("OnDestroy")
end

function Quest70026:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70026:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70026:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70026:InvokeOnAbility(arg1)
    print("InvokeOnAbility")
    print("Accept messages from ability system")
    print("Mine Event Boss Revive")
    if arg1.valueString == "MineEventBoss_Revive" then
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor:GetSubQuestState(7002602) == 2 then
            self:NarratorOnlyTask(datas.NarratorTable, nil, "")
            actor:FinishQuestID(false, 7002602)
        else
            if actor:GetSubQuestState(7002602) == 1 then
                self:NarratorOnlyTask(datas.NarratorTable, nil, "")
            else
                if actor:GetSubQuestState(7002603) == 2 then
                    self:NarratorOnlyTask(datas.NarratorTable, nil, "")
                else
                    if actor:GetSubQuestState(7002603) == 1 then
                        self:NarratorOnlyTask(datas.NarratorTable, nil, "")
                    else
                        if actor:GetSubQuestState(7002604) == 2 then
                            self:NarratorOnlyTask(datas.NarratorTable, nil, "")
                        else
                            if actor:GetSubQuestState(7002604) == 1 then
                                self:NarratorOnlyTask(datas.NarratorTable, nil, "")
                            end
                        end
                    end
                end
            end
        end
    end
end

function Quest70026:OnSubStart7002601(arg1)
    print("OnSubStart7002601")
end

function Quest70026:OnSubFinish7002601(arg1)
    print("OnSubFinish7002601")
end

function Quest70026:OnSubFailed7002601(arg1)
    print("OnSubFailed7002601")
end

function Quest70026:OnSubStart7002602(arg1)
    print("OnSubStart7002602")
end

function Quest70026:OnSubFinish7002602(arg1)
    print("OnSubFinish7002602")
end

function Quest70026:OnSubFailed7002602(arg1)
    print("OnSubFailed7002602")
end

function Quest70026:OnSubStart7002603(arg1)
    print("OnSubStart7002603")
end

function Quest70026:OnSubFinish7002603(arg1)
    print("OnSubFinish7002603")
end

function Quest70026:OnSubFailed7002603(arg1)
    print("OnSubFailed7002603")
end

function Quest70026:OnSubStart7002604(arg1)
    print("OnSubStart7002604")
end

function Quest70026:OnSubFinish7002604(arg1)
    print("OnSubFinish7002604")
end

function Quest70026:OnSubFailed7002604(arg1)
    print("OnSubFailed7002604")
end

return Quest70026
