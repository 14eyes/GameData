require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest1009 = class("Quest1009", QuestActorProxy)
Quest1009.defaultAlias = "Quest1009"
local DailyNPCManager = require("Actor/DailyNPCManager")

local clientData
local n = 1009
local subIDs
local paimonData
local afeiData
local clue01Data
local clue02Data
local clue03Data
local tribute01Data
local tribute02Data
local tribute03Data

function Quest1009:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    n = 1009
    paimonData = clientData.PaimonData
    afeiData = clientData.AfeiData
    clue01Data = clientData.Clue01Data
    clue02Data = clientData.Clue02Data
    clue03Data = clientData.Clue03Data
    tribute01Data = clientData.Tribute01Data
    tribute02Data = clientData.Tribute02Data
    tribute03Data = clientData.Tribute03Data
end

function Quest1009:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["100901"] = self.OnSubStart100901
    self.subStartHandlers["100915"] = self.OnSubStart100915
    self.subStartHandlers["100902"] = self.OnSubStart100902
    self.subStartHandlers["100903"] = self.OnSubStart100903
    self.subStartHandlers["100904"] = self.OnSubStart100904
    self.subStartHandlers["100905"] = self.OnSubStart100905
    self.subStartHandlers["100906"] = self.OnSubStart100906
    self.subStartHandlers["100907"] = self.OnSubStart100907
    self.subStartHandlers["100908"] = self.OnSubStart100908
    self.subStartHandlers["100909"] = self.OnSubStart100909
    self.subStartHandlers["100910"] = self.OnSubStart100910
    self.subStartHandlers["100911"] = self.OnSubStart100911
    self.subStartHandlers["100912"] = self.OnSubStart100912
    self.subStartHandlers["100913"] = self.OnSubStart100913
    self.subStartHandlers["100914"] = self.OnSubStart100914
end

function Quest1009:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["100901"] = self.OnSubFinish100901
    self.subFinishHandlers["100915"] = self.OnSubFinish100915
    self.subFinishHandlers["100902"] = self.OnSubFinish100902
    self.subFinishHandlers["100903"] = self.OnSubFinish100903
    self.subFinishHandlers["100904"] = self.OnSubFinish100904
    self.subFinishHandlers["100905"] = self.OnSubFinish100905
    self.subFinishHandlers["100906"] = self.OnSubFinish100906
    self.subFinishHandlers["100907"] = self.OnSubFinish100907
    self.subFinishHandlers["100908"] = self.OnSubFinish100908
    self.subFinishHandlers["100909"] = self.OnSubFinish100909
    self.subFinishHandlers["100910"] = self.OnSubFinish100910
    self.subFinishHandlers["100911"] = self.OnSubFinish100911
    self.subFinishHandlers["100912"] = self.OnSubFinish100912
    self.subFinishHandlers["100913"] = self.OnSubFinish100913
    self.subFinishHandlers["100914"] = self.OnSubFinish100914
end

function Quest1009:PaimonDis()
    print("PaimonDis")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(paimonData.Alias)
        if questNpcActor ~= nil then
            print("paimon ~= nil")
            questNpcActor:DestroyWithDisappear(false)
        end
    end)
end

function Quest1009:OnSubStart100901(arg1)
    print("100901 start:...")
    actorMgr:CreateActorWithPos("Q100901Trigger", "Actor/Gadget/Q100901Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q100907Tribute").pos, sceneData:GetDummyPoint(3, "Q100907Tribute").rot, true, false)
end

function Quest1009:OnSubStart100915(arg1)
    print("100915 start:...")
    local avatarPos = actorUtils.GetAvatarPos()
    print("playerpos," .. avatarPos.x .. "," .. avatarPos.y .. "," .. avatarPos.z)
    local avatarForward = actorUtils.GetAvatarForward()
    local n = 1.5
    print(avatarForward.x .. "," .. avatarForward.y .. "," .. avatarForward.z)
    avatarPos.x = avatarPos.x + avatarForward.x * n
    avatarPos.z = avatarPos.z + avatarForward.z * n
    print("paimon pos," .. avatarPos.x .. "," .. avatarPos.y .. "," .. avatarPos.z)
    local v = avatarForward
    v.x = v.x * -1
    v.z = v.z * -1
    self:CreateQuestNpcByIdWithPos(100915, 1005, 0, avatarPos, M.Dir2Euler(v))
    self:RequestInteraction(paimonData.Alias)
end

function Quest1009:OnSubStart100902(arg1)
    print("100902 start:...")
    self:CreateQuestNpc(arg1, clue01Data.ID)
end

function Quest1009:OnSubStart100903(arg1)
    print("100903 start:...")
    self:CreateQuestNpc(arg1, clue02Data.ID)
end

function Quest1009:OnSubStart100904(arg1)
    print("100904 start:...")
    self:CreateQuestNpc(arg1, clue03Data.ID)
end

function Quest1009:OnSubStart100905(arg1)
    print("100905 start:...")
end

function Quest1009:OnSubStart100906(arg1)
    print("100906 start:...")
end

function Quest1009:OnSubStart100907(arg1)
    print("100907 start:...")
end

function Quest1009:OnSubStart100908(arg1)
    print("100908 start:...")
end

function Quest1009:OnSubStart100909(arg1)
    print("100909 start:...")
end

function Quest1009:OnSubStart100910(arg1)
    print("100910 start:...")
end

function Quest1009:OnSubStart100911(arg1)
    print("100911 start:...")
end

function Quest1009:OnSubStart100912(arg1)
    print("100912 start:...")
end

function Quest1009:OnSubStart100913(arg1)
    print("100913 start:...")
    self:CreateQuestNpc(arg1, afeiData.ID)
end

function Quest1009:OnSubStart100914(arg1)
    print("100914 start:...")
    self:CreateQuestNpc(arg1, afeiData.ID)
    actorMgr:CreateActorWithPos("Q100914Trigger", "Actor/Gadget/Q100914Trigger", 70900002, 0, sceneData:GetDummyPoint(1052, "Q100904PlayerPos").pos, sceneData:GetDummyPoint(1052, "Q100904PlayerPos").rot, true, false, 1052)
end

function Quest1009:OnSubFinish100901(arg1)
    print("OnFinished 100901")
end

function Quest1009:OnSubFinish100915(arg1)
    print("OnFinished 100915")
    self:PaimonDis()
end

function Quest1009:OnSubFinish100902(arg1)
    print("OnFinished 100902")
    self:PaimonDis()
end

function Quest1009:OnSubFinish100903(arg1)
    print("OnFinished 100903")
    self:PaimonDis()
end

function Quest1009:OnSubFinish100904(arg1)
    print("OnFinished 100904")
    self:PaimonDis()
end

function Quest1009:OnSubFinish100905(arg1)
    print("OnFinished 100905")
end

function Quest1009:OnSubFinish100906(arg1)
    print("OnFinished 100906")
end

function Quest1009:OnSubFinish100907(arg1)
    print("OnFinished 100907")
end

function Quest1009:OnSubFinish100908(arg1)
    print("OnFinished 100908")
end

function Quest1009:OnSubFinish100909(arg1)
    print("OnFinished 100909")
end

function Quest1009:OnSubFinish100910(arg1)
    print("OnFinished 100910")
end

function Quest1009:OnSubFinish100911(arg1)
    print("OnFinished 100911")
    globalActor:EnablePlayerInput(false)
    self:CallDelay(4, function()
        globalActor:EnablePlayerInput(true)
    end)

    self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q1009CameraPos").pos, 2, 4, true)
end

function Quest1009:OnSubFinish100912(arg1)
    print("OnFinished 100912")
end

function Quest1009:OnSubFinish100913(arg1)
    print("OnFinished 100913")
end

function Quest1009:OnSubFinish100914(arg1)
    print("OnFinished 100914")
    if self:GetQuestNpcActor(afeiData.Alias) ~= nil then
        self:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActorByAlias(afeiData.Alias, false)
        end)
    end

    self:PaimonDis()
end

function Quest1009:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        print("param == 1")
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        self:ActionSafeCall(function(arg1)
            local questNpcActor = actor:GetQuestNpcActor(paimonData.Alias)
            if questNpcActor ~= nil then
                print("paimon ~= nil")
                questNpcActor:DestroyWithDisappear(false)
            end
        end)
    end
end

function Quest1009:Start() end
function Quest1009:OnDestroy() end
return Quest1009
