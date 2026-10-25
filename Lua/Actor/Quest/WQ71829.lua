require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71829 = class("Quest71829", QuestActorProxy)
Quest71829.defaultAlias = "Quest71829"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest71829:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest71829:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7182901"] = self.OnSubStart7182901,
        ["7182902"] = self.OnSubStart7182902,
        ["7182903"] = self.OnSubStart7182903,
        ["7182904"] = self.OnSubStart7182904,
        ["7182905"] = self.OnSubStart7182905,
        ["7182906"] = self.OnSubStart7182906,
        ["7182907"] = self.OnSubStart7182907,
        ["7182908"] = self.OnSubStart7182908,
        ["7182909"] = self.OnSubStart7182909
    }
end

function Quest71829:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7182901"] = self.OnSubFinish7182901,
        ["7182902"] = self.OnSubFinish7182902,
        ["7182903"] = self.OnSubFinish7182903,
        ["7182904"] = self.OnSubFinish7182904,
        ["7182905"] = self.OnSubFinish7182905,
        ["7182906"] = self.OnSubFinish7182906,
        ["7182907"] = self.OnSubFinish7182907,
        ["7182908"] = self.OnSubFinish7182908,
        ["7182909"] = self.OnSubFinish7182909
    }
end

function Quest71829:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7182901"] = self.OnSubFailed7182901,
        ["7182902"] = self.OnSubFailed7182902,
        ["7182903"] = self.OnSubFailed7182903,
        ["7182904"] = self.OnSubFailed7182904,
        ["7182905"] = self.OnSubFailed7182905,
        ["7182906"] = self.OnSubFailed7182906,
        ["7182907"] = self.OnSubFailed7182907,
        ["7182908"] = self.OnSubFailed7182908,
        ["7182909"] = self.OnSubFailed7182909
    }
end

function Quest71829:Start()
    print("Start")
end

function Quest71829:OnDestroy()
    print("OnDestroy")
end

function Quest71829:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71829:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71829:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71829:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest71829:RepeatCheckSit()
    print("CheckSitPos")
    Quest71829:CallOnAvatarSit(Quest71829.CheckSitPos)
end

function Quest71829:CheckSitPos()
    local pos = sceneData:GetDummyPoint(3, "Q71829PlayerSit").pos
    local avatarPos = actorUtils.GetAvatarPos()
    print(pos.x - avatarPos.x)
    print(pos.z - avatarPos.z)
    if math.abs(pos.x - avatarPos.x) < 1 then
        if math.abs(pos.z - avatarPos.z) < 1 then
            local actor = actorMgr:GetActor(clientData.ActorAlias)
            if actor ~= nil then
                actor:FinishQuestID(false, 7182902)
            end
        end
    else
        Quest71829:CallOnAvatarStand(Quest71829.RepeatCheckSit)
    end
end

function Quest71829:OnSubStart7182901(arg1)
    print("OnSubStart7182901")
end

function Quest71829:OnSubFinish7182901(arg1)
    print("OnSubFinish7182901")
end

function Quest71829:OnSubFailed7182901(arg1)
    print("OnSubFailed7182901")
end

function Quest71829:OnSubStart7182902(arg1)
    print("OnSubStart7182902")
    self:CreateQuestNpc(arg1, npcs.Npc2201Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc2201Data.alias):SitOnChair(0)
    self:RepeatCheckSit()
end

function Quest71829:OnSubFinish7182902(arg1)
    print("OnSubFinish7182902")
    self:ShowBlackScreen(0.2, 1, 0.2, function(arg1)
        arg1:CreateQuestNpcById(7182903, npcs.Npc2204Data.id, 1)
        arg1:GetQuestNpcActor(npcs.Npc2204Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
        arg1:RequestInteraction(npcs.Npc2201Data.alias)
    end, nil, nil, "")
end

function Quest71829:OnSubFailed7182902(arg1)
    print("OnSubFailed7182902")
end

function Quest71829:OnSubStart7182903(arg1)
    print("OnSubStart7182903")
end

function Quest71829:OnSubFinish7182903(arg1)
    print("OnSubFinish7182903")
    self:ShowBlackScreen(0.2, 1, 0.2, function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc2204Data.alias):StandFromChair(0)
        arg1:GetQuestNpcActor(npcs.Npc2201Data.alias):StandFromChair(0)
        arg1:CreateQuestNpcById(7182904, npcs.Npc2204Data.id, 1)
        arg1:CreateQuestNpcById(7182904, npcs.Npc2201Data.id, 2)
    end, nil, nil, "")
end

function Quest71829:OnSubFailed7182903(arg1)
    print("OnSubFailed7182903")
end

function Quest71829:OnSubStart7182904(arg1)
    print("OnSubStart7182904")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc2204Data.alias)
    questNpcActor:DoFreeStateTrigger()
    questNpcActor:DoFreeStyle(1120, true, nil, true, true, false)
    local v = self:GetQuestNpcActor(npcs.Npc2201Data.alias)
    v:DoFreeStateTrigger()
    v:DoFreeStyle(1190, true, nil, true, true, false)
end

function Quest71829:OnSubFinish7182904(arg1)
    print("OnSubFinish7182904")
end

function Quest71829:OnSubFailed7182904(arg1)
    print("OnSubFailed7182904")
end

function Quest71829:OnSubStart7182905(arg1)
    print("OnSubStart7182905")
end

function Quest71829:OnSubFinish7182905(arg1)
    print("OnSubFinish7182905")
end

function Quest71829:OnSubFailed7182905(arg1)
    print("OnSubFailed7182905")
end

function Quest71829:OnSubStart7182906(arg1)
    print("OnSubStart7182906")
end

function Quest71829:OnSubFinish7182906(arg1)
    print("OnSubFinish7182906")
    self:NarratorOnlyTask(datas.Narrator06Finish, nil, "")
end

function Quest71829:OnSubFailed7182906(arg1)
    print("OnSubFailed7182906")
end

function Quest71829:OnSubStart7182907(arg1)
    print("OnSubStart7182907")
end

function Quest71829:OnSubFinish7182907(arg1)
    print("OnSubFinish7182907")
    self:NarratorOnlyTask(datas.Narrator07Finish, nil, "")
end

function Quest71829:OnSubFailed7182907(arg1)
    print("OnSubFailed7182907")
end

function Quest71829:OnSubStart7182908(arg1)
    print("OnSubStart7182908")
end

function Quest71829:OnSubFinish7182908(arg1)
    print("OnSubFinish7182908")
    self:NarratorOnlyTask(datas.Narrator08Finish, function(arg1_2)
        arg1_2:ShowBlackScreen(0.2, 1, 0.2, function(arg1_2)
            arg1_2:CreateQuestNpcById(7182909, npcs.Npc2204Data.id, 1)
            arg1_2:CreateQuestNpcById(7182909, npcs.Npc2201Data.id, 2)
            arg1_2:TransmitPlayerById(arg1, 1)
            arg1_2:RequestInteraction(npcs.Npc2204Data.alias)
        end, nil, nil, "")
    end, "")
end

function Quest71829:OnSubFailed7182908(arg1)
    print("OnSubFailed7182908")
end

function Quest71829:OnSubStart7182909(arg1)
    print("OnSubStart7182909")
end

function Quest71829:OnSubFinish7182909(arg1)
    print("OnSubFinish7182909")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc2204Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc2201Data.alias)
end

function Quest71829:OnSubFailed7182909(arg1)
    print("OnSubFailed7182909")
end

return Quest71829
