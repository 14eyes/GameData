require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest5031 = class("Quest5031", QuestActorProxy)
Quest5031.defaultAlias = "Quest5031"
local clientData
local this
local mainID
local actorAlias
local subIDs
local datas

function Quest5031:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    datas = clientData.Datas
end

function Quest5031:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["503101"] = self.OnSubStart503101,
        ["503102"] = self.OnSubStart503102,
        ["503103"] = self.OnSubStart503103,
        ["503104"] = self.OnSubStart503104,
        ["503105"] = self.OnSubStart503105,
        ["503106"] = self.OnSubStart503106
    }
end

function Quest5031:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["503101"] = self.OnSubFinish503101,
        ["503102"] = self.OnSubFinish503102,
        ["503103"] = self.OnSubFinish503103,
        ["503104"] = self.OnSubFinish503104,
        ["503105"] = self.OnSubFinish503105,
        ["503106"] = self.OnSubFinish503106
    }
end

function Quest5031:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["503102"] = self.OnSubFailed503102,
        ["503104"] = self.OnSubFailed503104,
        ["503105"] = self.OnSubFailed503105
    }
end

function Quest5031:Start()
    print("Start")
end

function Quest5031:OnDestroy()
    print("OnDestroy")
end

function Quest5031:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest5031:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest5031:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest5031:OnSubStart503101(arg1)
    print("OnSubStart503101")
end

function Quest5031:OnSubFinish503101(arg1)
    print("OnSubFinish503101")
end

function Quest5031:OnSubStart503102(arg1)
    print("OnSubStart503102")
    this:DisableMainPageWithConfigByQuest(true, "DisableNatlanMainQuest")
    this:SetNavigationByMainId(5029, true)
    if self:GetSubQuestState(502903) == 3 then
        globalActor:SpawnAttachInFixedAreaEx("502908", "NPC_Item_NTHeaddress_Boy", 10000005, nil, nil, nil, {20243}, true)
        globalActor:SpawnAttachInFixedAreaEx("502908", "NPC_Item_NTHeaddress_Girl", 10000007, nil, nil, nil, {20243}, true)
    end

    if self:GetSubQuestState(502908) == 2 then
        this:DeployStoryByQuest(110502902)
    end

    if self:GetSubQuestState(502907) == 2 then
        this:DeployStoryByQuest(110502907)
    end
end

function Quest5031:OnSubFinish503102(arg1)
    print("OnSubFinish503102")
    this:DisableMainPageWithConfigByQuest(false, "DisableNatlanMainQuest")
    globalActor:UnSpawnAttachInFixedArea("502908", "NPC_Item_NTHeaddress_Boy", 10000005, nil, nil, nil, {20243}, true)
    globalActor:UnSpawnAttachInFixedArea("502908", "NPC_Item_NTHeaddress_Girl", 10000007, nil, nil, nil, {20243}, true)
end

function Quest5031:OnSubFailed503102(arg1)
    print("OnSubFailed503102")
    this:DisableMainPageWithConfigByQuest(false, "DisableNatlanMainQuest")
    globalActor:UnSpawnAttachInFixedArea("502908", "NPC_Item_NTHeaddress_Boy", 10000005, nil, nil, nil, {20243}, true)
    globalActor:UnSpawnAttachInFixedArea("502908", "NPC_Item_NTHeaddress_Girl", 10000007, nil, nil, nil, {20243}, true)
    this:CancelStoryByQuest(110502902)
    this:CancelStoryByQuest(110502907)
end

function Quest5031:OnSubStart503103(arg1)
    print("OnSubStart503103")
end

function Quest5031:OnSubFinish503103(arg1)
    print("OnSubFinish503103")
end

function Quest5031:OnSubStart503104(arg1)
    print("OnSubStart503104")
    this:DisableMainPageWithConfigByQuest(true, "DisableTestSumeruMainQuest")
    this:SetNavigationByMainId(5029, true)
    this:LevelReadySafeCall(function(arg1)
        this:DeployStoryByQuest(110502908)
    end)
end

function Quest5031:OnSubFinish503104(arg1)
    print("OnSubFinish503104")
    this:DisableMainPageWithConfigByQuest(false, "DisableTestSumeruMainQuest")
    this:CancelStoryByQuest(110502908)
end

function Quest5031:OnSubFailed503104(arg1)
    print("OnSubFailed503104")
    this:DisableMainPageWithConfigByQuest(false, "DisableTestSumeruMainQuest")
    this:CancelStoryByQuest(110502908)
end

function Quest5031:OnSubStart503105(arg1)
    print("OnSubStart503105")
    this:DisableMainPageWithConfigByQuest(true, "DisableTestSumeruMainQuest")
    this:SetNavigationByMainId(5029, true)
end

function Quest5031:OnSubFinish503105(arg1)
    print("OnSubFinish503105")
    this:DisableMainPageWithConfigByQuest(false, "DisableTestSumeruMainQuest")
end

function Quest5031:OnSubFailed503105(arg1)
    print("OnSubFailed503105")
    this:DisableMainPageWithConfigByQuest(false, "DisableTestSumeruMainQuest")
end

function Quest5031:OnSubStart503106(arg1)
    print("OnSubStart503106")
end

function Quest5031:OnSubFinish503106(arg1)
    print("OnSubFinish503106")
end

return Quest5031
