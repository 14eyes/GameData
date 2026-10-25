require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest23043 = class("Quest23043", QuestActorProxy)
Quest23043.defaultAlias = "Quest23043"
local clientData
local mainID
local actorAlias
local subIDs

function Quest23043:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest23043:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2304306"] = self.OnSubStart2304306,
        ["2304301"] = self.OnSubStart2304301,
        ["2304302"] = self.OnSubStart2304302,
        ["2304303"] = self.OnSubStart2304303,
        ["2304304"] = self.OnSubStart2304304,
        ["2304312"] = self.OnSubStart2304312,
        ["2304313"] = self.OnSubStart2304313,
        ["2304305"] = self.OnSubStart2304305,
        ["2304316"] = self.OnSubStart2304316,
        ["2304307"] = self.OnSubStart2304307,
        ["2304308"] = self.OnSubStart2304308,
        ["2304309"] = self.OnSubStart2304309,
        ["2304310"] = self.OnSubStart2304310,
        ["2304314"] = self.OnSubStart2304314,
        ["2304315"] = self.OnSubStart2304315,
        ["2304311"] = self.OnSubStart2304311,
        ["2304317"] = self.OnSubStart2304317
    }
end

function Quest23043:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2304306"] = self.OnSubFinish2304306,
        ["2304301"] = self.OnSubFinish2304301,
        ["2304302"] = self.OnSubFinish2304302,
        ["2304303"] = self.OnSubFinish2304303,
        ["2304304"] = self.OnSubFinish2304304,
        ["2304312"] = self.OnSubFinish2304312,
        ["2304313"] = self.OnSubFinish2304313,
        ["2304305"] = self.OnSubFinish2304305,
        ["2304316"] = self.OnSubFinish2304316,
        ["2304307"] = self.OnSubFinish2304307,
        ["2304308"] = self.OnSubFinish2304308,
        ["2304309"] = self.OnSubFinish2304309,
        ["2304310"] = self.OnSubFinish2304310,
        ["2304314"] = self.OnSubFinish2304314,
        ["2304315"] = self.OnSubFinish2304315,
        ["2304311"] = self.OnSubFinish2304311,
        ["2304317"] = self.OnSubFinish2304317
    }
end

function Quest23043:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest23043:Start()
    print("Start")
end

function Quest23043:OnDestroy()
    print("OnDestroy")
end

function Quest23043:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest23043:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest23043:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest23043:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        self:SetQuestVarByMainId(0, 1)
    end

    if arg1 == 2 then
        self:SetQuestVarByMainId(0, 2)
    end

    if arg1 == 3 then
        actorUtils.FinishQuestID(true, 2304303)
        actorUtils.FinishQuestID(true, 2304304)
        actorUtils.FinishQuestID(true, 2304309)
        actorUtils.FinishQuestID(true, 2304310)
    end

    if arg1 == 4 then
        self:SetQuestVarByMainId(2, 1)
    end

    if arg1 == 5 then
        self:SetQuestVarByMainId(3, 1)
    end

    if arg1 == 6 then
        self:SetQuestVarByMainId(4, 1)
        actorUtils.FinishQuestID(false, 2304303)
        actorUtils.FinishQuestID(false, 2304304)
        actorUtils.FinishQuestID(false, 2304309)
        actorUtils.FinishQuestID(false, 2304310)
    end

    if arg1 == 7 then
        self:SetQuestVarByMainId(4, 2)
        actorUtils.FinishQuestID(false, 2304303)
        actorUtils.FinishQuestID(false, 2304304)
        actorUtils.FinishQuestID(false, 2304309)
        actorUtils.FinishQuestID(false, 2304310)
    end
end

function Quest23043:OnSubStart2304306(arg1)
    print("OnSubStart2304306")
end

function Quest23043:OnSubFinish2304306(arg1)
    print("OnSubFinish2304306")
end

function Quest23043:OnSubStart2304301(arg1)
    print("OnSubStart2304301")
end

function Quest23043:OnSubFinish2304301(arg1)
    print("OnSubFinish2304301")
end

function Quest23043:OnSubStart2304302(arg1)
    print("OnSubStart2304302")
end

function Quest23043:OnSubFinish2304302(arg1)
    print("OnSubFinish2304302")
end

function Quest23043:OnSubStart2304303(arg1)
    print("OnSubStart2304303")
end

function Quest23043:OnSubFinish2304303(arg1)
    print("OnSubFinish2304303")
end

function Quest23043:OnSubStart2304304(arg1)
    print("OnSubStart2304304")
end

function Quest23043:OnSubFinish2304304(arg1)
    print("OnSubFinish2304304")
end

function Quest23043:OnSubStart2304312(arg1)
    print("OnSubStart2304312")
end

function Quest23043:OnSubFinish2304312(arg1)
    print("OnSubFinish2304312")
end

function Quest23043:OnSubStart2304313(arg1)
    print("OnSubStart2304313")
end

function Quest23043:OnSubFinish2304313(arg1)
    print("OnSubFinish2304313")
end

function Quest23043:OnSubStart2304305(arg1)
    print("OnSubStart2304305")
end

function Quest23043:OnSubFinish2304305(arg1)
    print("OnSubFinish2304305")
end

function Quest23043:OnSubStart2304316(arg1)
    print("OnSubStart2304316")
    self:CallDelay(2, function(arg1)
        arg1:ActionSafeCall(function(arg1)
            actorUtils.FinishQuestID(false, 2304316)
        end)
    end)
end

function Quest23043:OnSubFinish2304316(arg1)
    print("OnSubFinish2304316")
end

function Quest23043:OnSubStart2304307(arg1)
    print("OnSubStart2304307")
end

function Quest23043:OnSubFinish2304307(arg1)
    print("OnSubFinish2304307")
end

function Quest23043:OnSubStart2304308(arg1)
    print("OnSubStart2304308")
end

function Quest23043:OnSubFinish2304308(arg1)
    print("OnSubFinish2304308")
end

function Quest23043:OnSubStart2304309(arg1)
    print("OnSubStart2304309")
end

function Quest23043:OnSubFinish2304309(arg1)
    print("OnSubFinish2304309")
end

function Quest23043:OnSubStart2304310(arg1)
    print("OnSubStart2304310")
end

function Quest23043:OnSubFinish2304310(arg1)
    print("OnSubFinish2304310")
end

function Quest23043:OnSubStart2304314(arg1)
    print("OnSubStart2304314")
end

function Quest23043:OnSubFinish2304314(arg1)
    print("OnSubFinish2304314")
end

function Quest23043:OnSubStart2304315(arg1)
    print("OnSubStart2304315")
end

function Quest23043:OnSubFinish2304315(arg1)
    print("OnSubFinish2304315")
end

function Quest23043:OnSubStart2304311(arg1)
    print("OnSubStart2304311")
end

function Quest23043:OnSubFinish2304311(arg1)
    print("OnSubFinish2304311")
end

function Quest23043:OnSubStart2304317(arg1)
    print("OnSubStart2304317")
    self:CallDelay(2, function(arg1)
        arg1:ActionSafeCall(function(arg1)
            actorUtils.FinishQuestID(false, 2304317)
        end)
    end)
end

function Quest23043:OnSubFinish2304317(arg1)
    print("OnSubFinish2304317")
end

return Quest23043
