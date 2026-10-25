require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20047 = class("Quest20047", QuestActorProxy)
Quest20047.defaultAlias = "Quest20047"
local Q20047ClientConfig = require("Quest/Client/Q20047ClientConfig")

function Quest20047:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["2004701"] = self.OnSubStart2004701
    self.subStartHandlers["2004702"] = self.OnSubStart2004702
    self.subStartHandlers["2004703"] = self.OnSubStart2004703
    self.subStartHandlers["2004704"] = self.OnSubStart2004704
    self.subStartHandlers["2004705"] = self.OnSubStart2004705
    self.subStartHandlers["2004706"] = self.OnSubStart2004706
    self.subStartHandlers["2004707"] = self.OnSubStart2004707
    self.subStartHandlers["2004708"] = self.OnSubStart2004708
end

function Quest20047:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["2004701"] = self.OnSubFinish2004701
    self.subFinishHandlers["2004702"] = self.OnSubFinish2004702
    self.subFinishHandlers["2004703"] = self.OnSubFinish2004703
    self.subFinishHandlers["2004704"] = self.OnSubFinish2004704
    self.subFinishHandlers["2004705"] = self.OnSubFinish2004705
    self.subFinishHandlers["2004706"] = self.OnSubFinish2004706
    self.subFinishHandlers["2004707"] = self.OnSubFinish2004707
    self.subFinishHandlers["2004708"] = self.OnSubFinish2004708
end

function Quest20047:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["2004701"] = self.OnSubFailed2004701
    self.subFailedHandlers["2004702"] = self.OnSubFailed2004702
    self.subFailedHandlers["2004703"] = self.OnSubFailed2004703
    self.subFailedHandlers["2004704"] = self.OnSubFailed2004704
    self.subFailedHandlers["2004705"] = self.OnSubFailed2004705
    self.subFailedHandlers["2004706"] = self.OnSubFailed2004706
    self.subFailedHandlers["2004707"] = self.OnSubFailed2004707
    self.subFailedHandlers["2004708"] = self.OnSubFailed2004708
end

function Quest20047:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        print("showblackscreen")
        self:ShowBlackScreen(0.5, 1, 0.5)
    end
end

function Quest20047:OnSubStart2004701(arg1)
    print("2004701 start")
end

function Quest20047:OnSubFinish2004701(arg1)
    print("2004701 finish")
end

function Quest20047:OnSubFailed2004701(arg1) end

function Quest20047:OnSubStart2004702(arg1)
    print("2004702 start")
end

function Quest20047:OnSubFinish2004702(arg1)
    print("2004702 finish")
end

function Quest20047:OnSubFailed2004702(arg1) end

function Quest20047:OnSubStart2004703(arg1)
    print("2004703 start")
end

function Quest20047:OnSubFinish2004703(arg1)
    print("2004703 finished")
end

function Quest20047:OnSubFailed2004703(arg1)
    print("2004703 fail")
end

function Quest20047:OnSubStart2004704(arg1)
    print("2004704 start")
end

function Quest20047:OnSubFinish2004704(arg1)
    print("2004704 finish")
end

function Quest20047:OnSubFailed2004704(arg1)
    print("2004704 failed")
end

function Quest20047:OnSubStart2004705(arg1)
    print("2004705 start")
end

function Quest20047:OnSubFinish2004705(arg1)
    print("2004705 finish")
end

function Quest20047:OnSubFailed2004705(arg1)
    print("2004705 failed")
end

function Quest20047:OnSubStart2004706(arg1)
    print("2004706 start")
end

function Quest20047:OnSubFinish2004706(arg1)
    print("2004706 finish")
    local actor = actorMgr:GetActor(Q20047ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 2004708)
    end
end

function Quest20047:OnSubFailed2004706(arg1)
    print("2004706 failed")
end

function Quest20047:OnSubStart2004707(arg1)
    print("2004707 start")
end

function Quest20047:OnSubFinish2004707(arg1)
    print("2004707 finish")
end

function Quest20047:OnSubFailed2004707(arg1)
    print("2004707 failed")
end

function Quest20047:OnMainFinished(arg1)
    print("main finished " .. tostring(arg1.QuestMainId))
end

function Quest20047:OnMainFailed(arg1)
    print("main failed " .. tostring(arg1.QuestMainId))
end

function Quest20047:OnMainCanceled(arg1)
    print("main canceled " .. tostring(arg1.QuestMainId))
end

function Quest20047:Start() end
function Quest20047:OnDestroy() end
return Quest20047
