require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest1013 = class("Quest1013", QuestActorProxy)
Quest1013.defaultAlias = "Quest1013"
local clientData
local subIDs
local paimonData
local ashanpoData
local zhongliData
local gongziData
local adaData
local aerData
local asanData
local DailyNPCManager = require("Actor/DailyNPCManager")

function Quest1013:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    paimonData = clientData.PaimonData
    ashanpoData = clientData.AshanpoData
    zhongliData = clientData.ZhongliData
    gongziData = clientData.GongziData
    adaData = clientData.AdaData
    aerData = clientData.AerData
    asanData = clientData.AsanData
end

function Quest1013:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["101301"] = self.OnSubStart101301
    self.subStartHandlers["101302"] = self.OnSubStart101302
    self.subStartHandlers["101303"] = self.OnSubStart101303
    self.subStartHandlers["101304"] = self.OnSubStart101304
    self.subStartHandlers["101305"] = self.OnSubStart101305
    self.subStartHandlers["101306"] = self.OnSubStart101306
    self.subStartHandlers["101307"] = self.OnSubStart101307
    self.subStartHandlers["101308"] = self.OnSubStart101308
    self.subStartHandlers["101309"] = self.OnSubStart101309
    self.subStartHandlers["101310"] = self.OnSubStart101310
    self.subStartHandlers["101311"] = self.OnSubStart101311
    self.subStartHandlers["101312"] = self.OnSubStart101312
    self.subStartHandlers["101313"] = self.OnSubStart101313
    self.subStartHandlers["101314"] = self.OnSubStart101314
    self.subStartHandlers["101315"] = self.OnSubStart101315
    self.subStartHandlers["101316"] = self.OnSubStart101316
    self.subStartHandlers["101317"] = self.OnSubStart101317
    self.subStartHandlers["101318"] = self.OnSubStart101318
    self.subStartHandlers["101319"] = self.OnSubStart101319
    self.subStartHandlers["101320"] = self.OnSubStart101320
end

function Quest1013:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["101301"] = self.OnSubFinish101301
    self.subFinishHandlers["101302"] = self.OnSubFinish101302
    self.subFinishHandlers["101303"] = self.OnSubFinish101303
    self.subFinishHandlers["101304"] = self.OnSubFinish101304
    self.subFinishHandlers["101305"] = self.OnSubFinish101305
    self.subFinishHandlers["101306"] = self.OnSubFinish101306
    self.subFinishHandlers["101307"] = self.OnSubFinish101307
    self.subFinishHandlers["101308"] = self.OnSubFinish101308
    self.subFinishHandlers["101309"] = self.OnSubFinish101309
    self.subFinishHandlers["101310"] = self.OnSubFinish101310
    self.subFinishHandlers["101311"] = self.OnSubFinish101311
    self.subFinishHandlers["101312"] = self.OnSubFinish101312
    self.subFinishHandlers["101313"] = self.OnSubFinish101313
    self.subFinishHandlers["101314"] = self.OnSubFinish101314
    self.subFinishHandlers["101315"] = self.OnSubFinish101315
    self.subFinishHandlers["101316"] = self.OnSubFinish101316
    self.subFinishHandlers["101317"] = self.OnSubFinish101317
    self.subFinishHandlers["101318"] = self.OnSubFinish101318
    self.subFinishHandlers["101319"] = self.OnSubFinish101319
    self.subFinishHandlers["101320"] = self.OnSubFinish101320
end

function Quest1013:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["101304"] = self.OnSubFailed101304
    self.subFailedHandlers["101308"] = self.OnSubFailed101308
    self.subFailedHandlers["101312"] = self.OnSubFailed101312
end

function Quest1013:PaimonDis()
    local questNpcActor = self:GetQuestNpcActor(paimonData.Alias)
    if questNpcActor ~= nil then
        self:ActionSafeCall(function(arg1)
            questNpcActor:DestroyWithDisappear(false)
        end)
    end
end

function Quest1013:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        print("param == 1")
        globalActor:BargainFixPrice(1)
    end

    if arg1 == 2 then
        print("param == 2")
        globalActor:BargainFixPrice(2)
    end

    if arg1 == 3 then
        print("param == 3")
        globalActor:BargainFixPrice(3)
    end

    if arg1 == 4 then
        print("\232\174\178\228\187\183\230\136\144\229\138\159\239\188\140\233\128\154\231\148\168\233\148\128\230\175\129\230\180\190\232\146\153&\233\146\159\231\166\187")
        if self:GetQuestNpcActor(zhongliData.Alias) ~= nil then
            self:ActionSafeCall(function(arg1)
                arg1:DestroyQuestNpcActorByAlias(zhongliData.Alias, false)
            end)
        end

        self:PaimonDis()
    end
end

function Quest1013:OnSubStart101301(arg1)
    print("101301 start:...")
    self:NotifyTo("Npc2092", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2098", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2099", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:CreateQuestNpc(arg1, ashanpoData.ID)
end

function Quest1013:OnSubStart101302(arg1)
    print("101302 start:...")
end

function Quest1013:OnSubStart101303(arg1)
    print("101303 start:...")
    self:CreateQuestNpc(arg1, adaData.ID)
end

function Quest1013:OnSubStart101304(arg1)
    print("101304 start:...")
end

function Quest1013:OnSubStart101305(arg1)
    print("101305 start:...")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 101305)
    end
end

function Quest1013:OnSubStart101306(arg1)
    print("101306 start:...")
end

function Quest1013:OnSubStart101307(arg1)
    print("101307 start:...")
    self:CreateQuestNpc(arg1, aerData.ID)
end

function Quest1013:OnSubStart101308(arg1)
    print("101308 start:...")
end

function Quest1013:OnSubStart101309(arg1)
    print("101309 start:...")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 101309)
    end
end

function Quest1013:OnSubStart101310(arg1)
    print("101310 start:...")
end

function Quest1013:OnSubStart101311(arg1)
    print("101311 start:...")
    self:CreateQuestNpc(arg1, asanData.ID)
end

function Quest1013:OnSubStart101312(arg1)
    print("101312 start:...")
end

function Quest1013:OnSubStart101313(arg1)
    print("101313 start:...")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 101313)
    end
end

function Quest1013:OnSubStart101314(arg1)
    print("101314 start:...")
end

function Quest1013:OnSubStart101315(arg1)
    print("101315 start:...")
end

function Quest1013:OnSubStart101316(arg1)
    print("101316 start:...")
    local subQuestState = self:GetSubQuestState(101303)
    local v = self:GetSubQuestState(101306)
    if subQuestState ~= 3 and v ~= 3 then
        self:CreateQuestNpc(arg1, adaData.ID)
    end

    local subQuestState2 = self:GetSubQuestState(101307)
    local subQuestState3 = self:GetSubQuestState(101310)
    if subQuestState2 ~= 3 and subQuestState3 ~= 3 then
        self:CreateQuestNpc(arg1, aerData.ID)
    end

    local subQuestState4 = self:GetSubQuestState(101311)
    local subQuestState5 = self:GetSubQuestState(101314)
    if subQuestState4 ~= 3 and subQuestState5 ~= 3 then
        self:CreateQuestNpc(arg1, asanData.ID)
    end
end

function Quest1013:OnSubStart101317(arg1)
    print("101317 start:...")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 101317)
    end
end

function Quest1013:OnSubStart101318(arg1)
    print("101318 start:...")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 101318)
    end
end

function Quest1013:OnSubStart101319(arg1)
    print("101319 start:...")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 101319)
    end
end

function Quest1013:OnSubStart101320(arg1)
    print("101320 start:...")
    self:CreateQuestNpc(arg1, gongziData.ID)
    self:NotifyTo("Npc2058", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2047", DailyNPCManager.NpcEventType.HIDESELF, true)
end

function Quest1013:OnSubFinish101301(arg1)
    print("OnFinished 101301")
    if self:GetQuestNpcActor(zhongliData.Alias) ~= nil then
        self:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActorByAlias(zhongliData.Alias, false)
        end)
    end

    if self:GetQuestNpcActor(gongziData.Alias) ~= nil then
        self:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActorByAlias(gongziData.Alias, false)
        end)
    end

    if self:GetQuestNpcActor(ashanpoData.Alias) ~= nil then
        self:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActorByAlias(ashanpoData.Alias, false)
        end)
    end

    self:NotifyTo("Npc2092", DailyNPCManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2098", DailyNPCManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2099", DailyNPCManager.NpcEventType.STARTDAILY, true)
    self:PaimonDis()
end

function Quest1013:OnSubFinish101302(arg1)
    print("OnFinished 101302")
end

function Quest1013:OnSubFinish101303(arg1)
    print("OnFinished 101303")
    if self:GetQuestNpcActor(adaData.Alias) ~= nil then
        self:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActorByAlias(adaData.Alias, false)
        end)
    end
end

function Quest1013:OnSubFinish101304(arg1)
    print("OnFinished 101304")
    if self:GetQuestNpcActor(zhongliData.Alias) ~= nil then
        self:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActorByAlias(zhongliData.Alias, false)
        end)
    end

    self:PaimonDis()
    if self:GetQuestNpcActor(adaData.Alias) ~= nil then
        self:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActorByAlias(adaData.Alias, false)
        end)
    end
end

function Quest1013:OnSubFinish101305(arg1)
    print("OnFinished 101305")
end

function Quest1013:OnSubFinish101306(arg1)
    print("OnFinished 101306")
    if self:GetQuestNpcActor(zhongliData.Alias) ~= nil then
        self:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActorByAlias(zhongliData.Alias, false)
        end)
    end

    self:PaimonDis()
    if self:GetQuestNpcActor(adaData.Alias) ~= nil then
        self:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActorByAlias(adaData.Alias, false)
        end)
    end
end

function Quest1013:OnSubFinish101307(arg1)
    print("OnFinished 101307")
    if self:GetQuestNpcActor(aerData.Alias) ~= nil then
        self:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActorByAlias(aerData.Alias, false)
        end)
    end
end

function Quest1013:OnSubFinish101308(arg1)
    print("OnFinished 101308")
    if self:GetQuestNpcActor(zhongliData.Alias) ~= nil then
        self:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActorByAlias(zhongliData.Alias, false)
        end)
    end

    self:PaimonDis()
    if self:GetQuestNpcActor(aerData.Alias) ~= nil then
        self:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActorByAlias(aerData.Alias, false)
        end)
    end
end

function Quest1013:OnSubFinish101309(arg1)
    print("OnFinished 101309")
end

function Quest1013:OnSubFinish101310(arg1)
    print("OnFinished 101310")
    if self:GetQuestNpcActor(zhongliData.Alias) ~= nil then
        self:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActorByAlias(zhongliData.Alias, false)
        end)
    end

    self:PaimonDis()
    if self:GetQuestNpcActor(aerData.Alias) ~= nil then
        self:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActorByAlias(aerData.Alias, false)
        end)
    end
end

function Quest1013:OnSubFinish101311(arg1)
    print("OnFinished 101311")
    if self:GetQuestNpcActor(asanData.Alias) ~= nil then
        self:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActorByAlias(asanData.Alias, false)
        end)
    end
end

function Quest1013:OnSubFinish101312(arg1)
    print("OnFinished 101312")
    if self:GetQuestNpcActor(zhongliData.Alias) ~= nil then
        self:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActorByAlias(zhongliData.Alias, false)
        end)
    end

    self:PaimonDis()
    if self:GetQuestNpcActor(asanData.Alias) ~= nil then
        self:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActorByAlias(asanData.Alias, false)
        end)
    end
end

function Quest1013:OnSubFinish101313(arg1)
    print("OnFinished 101313")
end

function Quest1013:OnSubFinish101314(arg1)
    print("OnFinished 101314")
    if self:GetQuestNpcActor(zhongliData.Alias) ~= nil then
        self:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActorByAlias(zhongliData.Alias, false)
        end)
    end

    self:PaimonDis()
    if self:GetQuestNpcActor(asanData.Alias) ~= nil then
        self:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActorByAlias(asanData.Alias, false)
        end)
    end
end

function Quest1013:OnSubFinish101315(arg1)
    print("OnFinished 101315")
end

function Quest1013:OnSubFinish101316(arg1)
    print("OnFinished 101316")
end

function Quest1013:OnSubFinish101320(arg1)
    print("OnFinished 101320")
    self:NotifyTo("Npc2058", DailyNPCManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2047", DailyNPCManager.NpcEventType.STARTDAILY, true)
    if self:GetQuestNpcActor(zhongliData.Alias) ~= nil then
        self:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActorByAlias(zhongliData.Alias, false)
        end)
    end

    if self:GetQuestNpcActor(gongziData.Alias) ~= nil then
        self:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActorByAlias(gongziData.Alias, false)
        end)
    end

    if self:GetQuestNpcActor(adaData.Alias) ~= nil then
        self:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActorByAlias(adaData.Alias, false)
        end)
    end

    if self:GetQuestNpcActor(aerData.Alias) ~= nil then
        self:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActorByAlias(aerData.Alias, false)
        end)
    end

    if self:GetQuestNpcActor(asanData.Alias) ~= nil then
        self:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActorByAlias(asanData.Alias, false)
        end)
    end

    self:PaimonDis()
    self:NarratorOnlyTaskByData(clientData.NarratorWithId01, nil)
end

function Quest1013:OnSubFailed101304(arg1)
    self:PaimonDis()
end

function Quest1013:OnSubFailed101308(arg1)
    self:PaimonDis()
end

function Quest1013:OnSubFailed101312(arg1)
    self:PaimonDis()
end

function Quest1013:Start() end
function Quest1013:OnDestroy() end
return Quest1013
