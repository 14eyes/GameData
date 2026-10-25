require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22306 = class("Quest22306", QuestActorProxy)
Quest22306.defaultAlias = "Quest22306"
local clientData

function Quest22306:OnDataLoaded()
    clientData = self.clientData
end

function Quest22306:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["2230601"] = self.OnSubStart2230601
    self.subStartHandlers["2230602"] = self.OnSubStart2230602
    self.subStartHandlers["2230603"] = self.OnSubStart2230603
    self.subStartHandlers["2230604"] = self.OnSubStart2230604
    self.subStartHandlers["2230605"] = self.OnSubStart2230605
    self.subStartHandlers["2230611"] = self.OnSubStart2230611
    self.subStartHandlers["2230612"] = self.OnSubStart2230612
    self.subStartHandlers["2230613"] = self.OnSubStart2230613
    self.subStartHandlers["2230621"] = self.OnSubStart2230621
    self.subStartHandlers["2230622"] = self.OnSubStart2230622
    self.subStartHandlers["2230623"] = self.OnSubStart2230623
    self.subStartHandlers["2230631"] = self.OnSubStart2230631
    self.subStartHandlers["2230632"] = self.OnSubStart2230632
    self.subStartHandlers["2230633"] = self.OnSubStart2230633
    self.subStartHandlers["2230641"] = self.OnSubStart2230641
    self.subStartHandlers["2230642"] = self.OnSubStart2230642
    self.subStartHandlers["2230643"] = self.OnSubStart2230643
    self.subStartHandlers["2230651"] = self.OnSubStart2230651
end

function Quest22306:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["2230601"] = self.OnSubFinish2230601
    self.subFinishHandlers["2230602"] = self.OnSubFinish2230602
    self.subFinishHandlers["2230603"] = self.OnSubFinish2230603
    self.subFinishHandlers["2230604"] = self.OnSubFinish2230604
    self.subFinishHandlers["2230605"] = self.OnSubFinish2230605
    self.subFinishHandlers["2230611"] = self.OnSubFinish2230611
    self.subFinishHandlers["2230612"] = self.OnSubFinish2230612
    self.subFinishHandlers["2230613"] = self.OnSubFinish2230613
    self.subFinishHandlers["2230621"] = self.OnSubFinish2230621
    self.subFinishHandlers["2230622"] = self.OnSubFinish2230622
    self.subFinishHandlers["2230623"] = self.OnSubFinish2230623
    self.subFinishHandlers["2230631"] = self.OnSubFinish2230631
    self.subFinishHandlers["2230632"] = self.OnSubFinish2230632
    self.subFinishHandlers["2230633"] = self.OnSubFinish2230633
    self.subFinishHandlers["2230641"] = self.OnSubFinish2230641
    self.subFinishHandlers["2230642"] = self.OnSubFinish2230642
    self.subFinishHandlers["2230643"] = self.OnSubFinish2230643
    self.subFinishHandlers["2230651"] = self.OnSubFinish2230651
end

function Quest22306:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["2230601"] = self.OnSubFailed2230601
    self.subFailedHandlers["2230602"] = self.OnSubFailed2230602
    self.subFailedHandlers["2230603"] = self.OnSubFailed2230603
    self.subFailedHandlers["2230604"] = self.OnSubFailed2230604
    self.subFailedHandlers["2230605"] = self.OnSubFailed2230605
    self.subFailedHandlers["2230611"] = self.OnSubFailed2230611
    self.subFailedHandlers["2230612"] = self.OnSubFailed2230612
    self.subFailedHandlers["2230613"] = self.OnSubFailed2230613
    self.subFailedHandlers["2230621"] = self.OnSubFailed2230621
    self.subFailedHandlers["2230622"] = self.OnSubFailed2230622
    self.subFailedHandlers["2230623"] = self.OnSubFailed2230623
    self.subFailedHandlers["2230631"] = self.OnSubFailed2230631
    self.subFailedHandlers["2230632"] = self.OnSubFailed2230632
    self.subFailedHandlers["2230633"] = self.OnSubFailed2230633
    self.subFailedHandlers["2230641"] = self.OnSubFailed2230641
    self.subFailedHandlers["2230642"] = self.OnSubFailed2230642
    self.subFailedHandlers["2230643"] = self.OnSubFailed2230643
    self.subFailedHandlers["2230651"] = self.OnSubFailed2230651
end

function Quest22306:OnSubStart2230601(arg1)
    self:SetQuestVarWithInterval(arg1.QuestConfigId, 0, 1, 3)
end

function Quest22306:OnSubFinish2230601(arg1) end
function Quest22306:OnSubFailed2230601(arg1) end
function Quest22306:OnSubStart2230602(arg1) end
function Quest22306:OnSubFinish2230602(arg1) end
function Quest22306:OnSubFailed2230602(arg1) end
function Quest22306:OnSubStart2230603(arg1) end
function Quest22306:OnSubFinish2230603(arg1) end
function Quest22306:OnSubFailed2230603(arg1) end
function Quest22306:OnSubStart2230604(arg1) end
function Quest22306:OnSubFinish2230604(arg1) end
function Quest22306:OnSubFailed2230604(arg1) end
function Quest22306:OnSubStart2230605(arg1) end
function Quest22306:OnSubFinish2230605(arg1) end
function Quest22306:OnSubFailed2230605(arg1) end
function Quest22306:OnSubStart2230611(arg1) end
function Quest22306:OnSubFinish2230611(arg1) end
function Quest22306:OnSubFailed2230611(arg1) end
function Quest22306:OnSubStart2230612(arg1) end
function Quest22306:OnSubFinish2230612(arg1) end
function Quest22306:OnSubFailed2230612(arg1) end
function Quest22306:OnSubStart2230613(arg1) end
function Quest22306:OnSubFinish2230613(arg1) end
function Quest22306:OnSubFailed2230613(arg1) end
function Quest22306:OnSubStart2230621(arg1) end
function Quest22306:OnSubFinish2230621(arg1) end
function Quest22306:OnSubFailed2230621(arg1) end
function Quest22306:OnSubStart2230622(arg1) end
function Quest22306:OnSubFinish2230622(arg1) end
function Quest22306:OnSubFailed2230622(arg1) end
function Quest22306:OnSubStart2230623(arg1) end
function Quest22306:OnSubFinish2230623(arg1) end
function Quest22306:OnSubFailed2230623(arg1) end
function Quest22306:OnSubStart2230631(arg1) end
function Quest22306:OnSubFinish2230631(arg1) end
function Quest22306:OnSubFailed2230631(arg1) end
function Quest22306:OnSubStart2230632(arg1) end
function Quest22306:OnSubFinish2230632(arg1) end
function Quest22306:OnSubFailed2230632(arg1) end
function Quest22306:OnSubStart2230633(arg1) end
function Quest22306:OnSubFinish2230633(arg1) end
function Quest22306:OnSubFailed2230633(arg1) end
function Quest22306:OnSubStart2230641(arg1) end
function Quest22306:OnSubFinish2230641(arg1) end
function Quest22306:OnSubFailed2230641(arg1) end
function Quest22306:OnSubStart2230642(arg1) end
function Quest22306:OnSubFinish2230642(arg1) end
function Quest22306:OnSubFailed2230642(arg1) end
function Quest22306:OnSubStart2230643(arg1) end
function Quest22306:OnSubFinish2230643(arg1) end
function Quest22306:OnSubFailed2230643(arg1) end
function Quest22306:OnSubStart2230651(arg1) end

function Quest22306:OnSubFinish2230651(arg1)
    globalActor:StartGuide("RandomTaskElementViewGuideIOS")
end

function Quest22306:OnSubFailed2230651(arg1) end

function Quest22306:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        if self:GetQuestVar(2230602, 0) == 1 then
            self:ShowReadingDialog(100416)
        else
            if self:GetQuestVar(2230602, 0) == 2 then
                self:ShowReadingDialog(100415)
            else
                if self:GetQuestVar(2230602, 0) == 3 then
                    self:ShowReadingDialog(100414)
                end
            end
        end
    end
end

function Quest22306:Start() end
function Quest22306:OnDestroy() end
return Quest22306
