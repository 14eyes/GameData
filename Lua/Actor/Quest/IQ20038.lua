require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20038 = class("Quest20038", QuestActorProxy)
Quest20038.defaultAlias = "Quest20038"
local clientData
local npcData
local n = 0
local v

function Quest20038:OnDataLoaded()
    clientData = self.clientData
    v = 20038
    npcData = clientData.NPCData
end

function Quest20038:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["2003801"] = self.OnSubStart2003801
    self.subStartHandlers["2003802"] = self.OnSubStart2003802
    self.subStartHandlers["2003803"] = self.OnSubStart2003803
    self.subStartHandlers["2003804"] = self.OnSubStart2003804
    self.subStartHandlers["2003805"] = self.OnSubStart2003805
    self.subStartHandlers["2003806"] = self.OnSubStart2003806
    self.subStartHandlers["2003807"] = self.OnSubStart2003807
    self.subStartHandlers["2003808"] = self.OnSubStart2003808
    self.subStartHandlers["2003809"] = self.OnSubStart2003809
    self.subStartHandlers["2003810"] = self.OnSubStart2003810
end

function Quest20038:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["2003801"] = self.OnSubFinish2003801
    self.subFinishHandlers["2003802"] = self.OnSubFinish2003802
    self.subFinishHandlers["2003803"] = self.OnSubFinish2003803
    self.subFinishHandlers["2003804"] = self.OnSubFinish2003804
    self.subFinishHandlers["2003805"] = self.OnSubFinish2003805
    self.subFinishHandlers["2003806"] = self.OnSubFinish2003806
    self.subFinishHandlers["2003807"] = self.OnSubFinish2003807
    self.subFinishHandlers["2003808"] = self.OnSubFinish2003808
    self.subFinishHandlers["2003809"] = self.OnSubFinish2003809
    self.subFinishHandlers["2003810"] = self.OnSubFinish2003810
end

function Quest20038:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["2003801"] = self.OnSubFailed2003801
    self.subFailedHandlers["2003802"] = self.OnSubFailed2003802
    self.subFailedHandlers["2003803"] = self.OnSubFailed2003803
    self.subFailedHandlers["2003804"] = self.OnSubFailed2003804
    self.subFailedHandlers["2003805"] = self.OnSubFailed2003805
    self.subFailedHandlers["2003806"] = self.OnSubFailed2003806
    self.subFailedHandlers["2003807"] = self.OnSubFailed2003807
    self.subFailedHandlers["2003808"] = self.OnSubFailed2003808
    self.subFailedHandlers["2003809"] = self.OnSubFailed2003809
    self.subFailedHandlers["2003810"] = self.OnSubFailed2003810
end

function Quest20038:OnSubStart2003801(arg1)
    math.randomseed(os.time())
    n = math.random(1, 3)
    print("01 start")
end

function Quest20038:OnSubFinish2003801(arg1)
    print("01 finish")
end

function Quest20038:OnSubFailed2003801(arg1) end

function Quest20038:OnSubStart2003802(arg1)
    print("02 start")
    print("02 n =" .. n)
end

function Quest20038:OnSubFinish2003802(arg1)
    print("02 finish")
end

function Quest20038:OnSubFailed2003802(arg1) end

function Quest20038:OnSubStart2003803(arg1)
    print("03 start")
end

function Quest20038:OnSubFinish2003803(arg1)
    print("03 finish")
end

function Quest20038:OnSubFailed2003803(arg1)
    print("03 fail")
end

function Quest20038:OnSubStart2003804(arg1)
    print("04 start")
    print("02 n =" .. n)
    if n == 1 then
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 2003802)
            print("finish 2003802")
        end
    end

    if n == 2 then
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 2003803)
            print("finish 2003803")
        end
    end

    if n == 3 then
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 2003804)
            print("finish 2003804")
        end
    end
end

function Quest20038:OnSubFinish2003804(arg1)
    print("04 finish")
end

function Quest20038:OnSubFailed2003804(arg1)
    print("04 fail")
end

function Quest20038:OnSubStart2003805(arg1)
    print("05 start")
end

function Quest20038:OnSubFinish2003805(arg1)
    print("05 finish")
end

function Quest20038:OnSubFailed2003805(arg1)
    print("05 fail")
end

function Quest20038:OnSubStart2003806(arg1)
    print("06 start")
end

function Quest20038:OnSubFinish2003806(arg1)
    print("06 finish")
end

function Quest20038:OnSubFailed2003806(arg1)
    print("06 fail")
end

function Quest20038:OnSubStart2003807(arg1)
    print("07 start")
end

function Quest20038:OnSubFinish2003807(arg1)
    print("07 finish")
end

function Quest20038:OnSubFailed2003807(arg1)
    print("07 fail")
end

function Quest20038:OnSubStart2003808(arg1)
    print("08 start")
end

function Quest20038:OnSubFinish2003808(arg1)
    print("08 finish")
end

function Quest20038:OnSubFailed2003808(arg1)
    print("08 fail")
end

function Quest20038:OnSubStart2003809(arg1)
    print("09 start")
end

function Quest20038:OnSubFinish2003809(arg1)
    print("09 finish")
end

function Quest20038:OnSubFailed2003809(arg1)
    print("09 fail")
end

function Quest20038:OnSubStart2003810(arg1)
    print("10 start")
end

function Quest20038:OnSubFinish2003810(arg1)
    print("10 finish")
end

function Quest20038:OnSubFailed2003810(arg1)
    print("10 fail")
end

function Quest20038:Start() end
function Quest20038:OnDestroy() end
return Quest20038
