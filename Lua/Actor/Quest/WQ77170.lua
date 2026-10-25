require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77170 = class("Quest77170", QuestActorProxy)
Quest77170.defaultAlias = "Quest77170"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest77170:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest77170:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7717001"] = self.OnSubStart7717001,
        ["7717002"] = self.OnSubStart7717002,
        ["7717003"] = self.OnSubStart7717003,
        ["7717004"] = self.OnSubStart7717004,
        ["7717005"] = self.OnSubStart7717005,
        ["7717006"] = self.OnSubStart7717006,
        ["7717007"] = self.OnSubStart7717007,
        ["7717008"] = self.OnSubStart7717008,
        ["7717009"] = self.OnSubStart7717009,
        ["7717010"] = self.OnSubStart7717010,
        ["7717011"] = self.OnSubStart7717011,
        ["7717012"] = self.OnSubStart7717012,
        ["7717019"] = self.OnSubStart7717019,
        ["7717013"] = self.OnSubStart7717013,
        ["7717014"] = self.OnSubStart7717014,
        ["7717015"] = self.OnSubStart7717015,
        ["7717016"] = self.OnSubStart7717016,
        ["7717017"] = self.OnSubStart7717017,
        ["7717018"] = self.OnSubStart7717018
    }
end

function Quest77170:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7717001"] = self.OnSubFinish7717001,
        ["7717002"] = self.OnSubFinish7717002,
        ["7717003"] = self.OnSubFinish7717003,
        ["7717004"] = self.OnSubFinish7717004,
        ["7717005"] = self.OnSubFinish7717005,
        ["7717006"] = self.OnSubFinish7717006,
        ["7717007"] = self.OnSubFinish7717007,
        ["7717008"] = self.OnSubFinish7717008,
        ["7717009"] = self.OnSubFinish7717009,
        ["7717010"] = self.OnSubFinish7717010,
        ["7717011"] = self.OnSubFinish7717011,
        ["7717012"] = self.OnSubFinish7717012,
        ["7717019"] = self.OnSubFinish7717019,
        ["7717013"] = self.OnSubFinish7717013,
        ["7717014"] = self.OnSubFinish7717014,
        ["7717015"] = self.OnSubFinish7717015,
        ["7717016"] = self.OnSubFinish7717016,
        ["7717017"] = self.OnSubFinish7717017,
        ["7717018"] = self.OnSubFinish7717018
    }
end

function Quest77170:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7717002"] = self.OnSubFailed7717002,
        ["7717005"] = self.OnSubFailed7717005,
        ["7717008"] = self.OnSubFailed7717008,
        ["7717011"] = self.OnSubFailed7717011
    }
end

function Quest77170:Start()
    print("Start")
end

function Quest77170:OnDestroy()
    print("OnDestroy")
end

function Quest77170:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77170:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77170:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77170:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77170:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 101 then
        actorUtils.FinishQuestWithParam({false}, {7717001})
    elseif arg1 == 103 then
        actorUtils.FinishQuestWithParam({false}, {7717003})
    elseif arg1 == 104 then
        actorUtils.FinishQuestWithParam({false}, {7717004})
    elseif arg1 == 106 then
        actorUtils.FinishQuestWithParam({false}, {7717006})
    elseif arg1 == 107 then
        actorUtils.FinishQuestWithParam({false}, {7717007})
    elseif arg1 == 109 then
        actorUtils.FinishQuestWithParam({false}, {7717009})
    elseif arg1 == 201 then
        actorUtils.FinishQuestWithParam({false}, {7717010})
    end
end

function Quest77170:OnSubStart7717001(arg1)
    print("OnSubStart7717001")
    this:CreateQuestNpc(arg1, npcs.Npc22546.id, 0, false, 0)
end

function Quest77170:OnSubFinish7717001(arg1)
    print("OnSubFinish7717001")
end

function Quest77170:OnSubStart7717002(arg1)
    print("OnSubStart7717002")
end

function Quest77170:OnSubFinish7717002(arg1)
    print("OnSubFinish7717002")
end

function Quest77170:OnSubFailed7717002(arg1)
    print("OnSubFailed7717002")
    this:RecycleAllRes()
end

function Quest77170:OnSubStart7717003(arg1)
    print("OnSubStart7717003")
    this:RequestInteraction(npcs.Npc22546.alias, "", true)
    this:DeployStoryByQuest(147717001)
end

function Quest77170:OnSubFinish7717003(arg1)
    print("OnSubFinish7717003")
    this:SetQuestVarByMainId(18, 1)
end

function Quest77170:OnSubStart7717004(arg1)
    print("OnSubStart7717004")
end

function Quest77170:OnSubFinish7717004(arg1)
    print("OnSubFinish7717004")
end

function Quest77170:OnSubStart7717005(arg1)
    print("OnSubStart7717005")
end

function Quest77170:OnSubFinish7717005(arg1)
    print("OnSubFinish7717005")
end

function Quest77170:OnSubFailed7717005(arg1)
    print("OnSubFailed7717005")
    this:RecycleAllRes()
end

function Quest77170:OnSubStart7717006(arg1)
    print("OnSubStart7717006")
    this:DeployStoryByQuest(147717001)
    this:RequestInteraction(npcs.Npc22546.alias, "", true)
end

function Quest77170:OnSubFinish7717006(arg1)
    print("OnSubFinish7717006")
end

function Quest77170:OnSubStart7717007(arg1)
    print("OnSubStart7717007")
end

function Quest77170:OnSubFinish7717007(arg1)
    print("OnSubFinish7717007")
end

function Quest77170:OnSubStart7717008(arg1)
    print("OnSubStart7717008")
end

function Quest77170:OnSubFinish7717008(arg1)
    print("OnSubFinish7717008")
end

function Quest77170:OnSubFailed7717008(arg1)
    print("OnSubFailed7717008")
    this:RecycleAllRes()
end

function Quest77170:OnSubStart7717009(arg1)
    print("OnSubStart7717009")
    this:DeployStoryByQuest(147717001)
    this:RequestInteraction(npcs.Npc22546.alias, "", true)
end

function Quest77170:OnSubFinish7717009(arg1)
    print("OnSubFinish7717009")
end

function Quest77170:OnSubStart7717010(arg1)
    print("OnSubStart7717010")
    this:CreateQuestNpc(arg1, npcs.Npc7875.id, 0, false, 0)
    this:DeployStoryByQuest(147717010)
end

function Quest77170:OnSubFinish7717010(arg1)
    print("OnSubFinish7717010")
end

function Quest77170:OnSubStart7717011(arg1)
    print("OnSubStart7717011")
end

function Quest77170:OnSubFinish7717011(arg1)
    print("OnSubFinish7717011")
end

function Quest77170:OnSubFailed7717011(arg1)
    print("OnSubFailed7717011")
    this:RecycleAllRes()
end

function Quest77170:OnSubStart7717012(arg1)
    print("OnSubStart7717012")
    this:RequestInteraction(npcs.Npc7875.alias, "", true)
end

function Quest77170:OnSubFinish7717012(arg1)
    print("OnSubFinish7717012")
end

function Quest77170:OnSubStart7717019(arg1)
    print("OnSubStart7717019")
end

function Quest77170:OnSubFinish7717019(arg1)
    print("OnSubFinish7717019")
end

function Quest77170:OnSubStart7717013(arg1)
    print("OnSubStart7717013")
end

function Quest77170:OnSubFinish7717013(arg1)
    print("OnSubFinish7717013")
end

function Quest77170:OnSubStart7717014(arg1)
    print("OnSubStart7717014")
end

function Quest77170:OnSubFinish7717014(arg1)
    print("OnSubFinish7717014")
end

function Quest77170:OnSubStart7717015(arg1)
    print("OnSubStart7717015")
end

function Quest77170:OnSubFinish7717015(arg1)
    print("OnSubFinish7717015")
end

function Quest77170:OnSubStart7717016(arg1)
    print("OnSubStart7717016")
end

function Quest77170:OnSubFinish7717016(arg1)
    print("OnSubFinish7717016")
end

function Quest77170:OnSubStart7717017(arg1)
    print("OnSubStart7717017")
end

function Quest77170:OnSubFinish7717017(arg1)
    print("OnSubFinish7717017")
end

function Quest77170:OnSubStart7717018(arg1)
    print("OnSubStart7717018")
end

function Quest77170:OnSubFinish7717018(arg1)
    print("OnSubFinish7717018")
end

return Quest77170
