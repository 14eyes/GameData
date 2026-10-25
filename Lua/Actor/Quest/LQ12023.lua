require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest12023 = class("Quest12023", QuestActorProxy)
Quest12023.defaultAlias = "Quest12023"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest12023:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest12023:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1202301"] = self.OnSubStart1202301,
        ["1202310"] = self.OnSubStart1202310,
        ["1202311"] = self.OnSubStart1202311,
        ["1202302"] = self.OnSubStart1202302,
        ["1202312"] = self.OnSubStart1202312,
        ["1202308"] = self.OnSubStart1202308,
        ["1202309"] = self.OnSubStart1202309,
        ["1202303"] = self.OnSubStart1202303,
        ["1202304"] = self.OnSubStart1202304,
        ["1202305"] = self.OnSubStart1202305,
        ["1202307"] = self.OnSubStart1202307,
        ["1202306"] = self.OnSubStart1202306
    }
end

function Quest12023:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1202301"] = self.OnSubFinish1202301,
        ["1202310"] = self.OnSubFinish1202310,
        ["1202311"] = self.OnSubFinish1202311,
        ["1202302"] = self.OnSubFinish1202302,
        ["1202312"] = self.OnSubFinish1202312,
        ["1202308"] = self.OnSubFinish1202308,
        ["1202309"] = self.OnSubFinish1202309,
        ["1202303"] = self.OnSubFinish1202303,
        ["1202304"] = self.OnSubFinish1202304,
        ["1202305"] = self.OnSubFinish1202305,
        ["1202307"] = self.OnSubFinish1202307,
        ["1202306"] = self.OnSubFinish1202306
    }
end

function Quest12023:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1202301"] = self.OnSubFailed1202301,
        ["1202310"] = self.OnSubFailed1202310,
        ["1202311"] = self.OnSubFailed1202311,
        ["1202302"] = self.OnSubFailed1202302,
        ["1202312"] = self.OnSubFailed1202312,
        ["1202308"] = self.OnSubFailed1202308,
        ["1202309"] = self.OnSubFailed1202309,
        ["1202303"] = self.OnSubFailed1202303,
        ["1202304"] = self.OnSubFailed1202304,
        ["1202305"] = self.OnSubFailed1202305,
        ["1202307"] = self.OnSubFailed1202307,
        ["1202306"] = self.OnSubFailed1202306
    }
end

function Quest12023:Start()
    print("Start")
end

function Quest12023:OnDestroy()
    print("OnDestroy")
end

function Quest12023:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest12023:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest12023:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest12023:CheckDistance()
    if self:GetSubQuestState(1202304) == 2 then
        local avatarPos = actorUtils.GetAvatarPos()
        local pos = sceneData:GetDummyPoint(3, "Q12023_dual").pos
        local dist = M.Dist(pos, avatarPos)
        print("StartCheck")
        if 25 < dist then
            actorUtils.FinishQuestID(true, 1202304)
        else
            self:CallDelay(1, self.NormalCheck)
        end
    end
end

function Quest12023:NormalCheck()
    self:CheckDistance()
end

function Quest12023:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1202311 then
        actorUtils.FinishQuestID(false, 1202311)
    elseif arg1 == 1202301 then
        globalActor:ChangeDay24Time(19, true)
    end
end

function Quest12023:OnSubStart1202301(arg1)
    print("OnSubStart1202301")
    self:CreateQuestNpc(arg1, npcs.Npc12067Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc3132Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12060Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc3140Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc12101Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc3133Data.id, 6)
    self:CreateQuestNpc(arg1, npcs.Npc12105Data.id, 7)
    self:CreateQuestNpc(arg1, npcs.Npc12204Data.id, 9)
    self:CreateQuestNpc(arg1, npcs.Npc12178Data.id, 0)
    actorMgr:CreateActorWithPos("Q12023Trigger", "Actor/Gadget/Q12023Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q12023_GOUHUO").pos, sceneData:GetDummyPoint(3, "Q12023_GOUHUO").rot, true, false, 3)
    globalActor:LeaveAllWeather()
    self:GetQuestNpcActor(npcs.Npc12178Data.alias):DoFreeStyle(1083, true, nil, true, true, true)
end

function Quest12023:OnSubFinish1202301(arg1)
    print("OnSubFinish1202301")
end

function Quest12023:OnSubFailed1202301(arg1)
    print("OnSubFailed1202301")
end

function Quest12023:OnSubStart1202310(arg1)
    print("OnSubStart1202310")
end

function Quest12023:OnSubFinish1202310(arg1)
    print("OnSubFinish1202310")
end

function Quest12023:OnSubFailed1202310(arg1)
    print("OnSubFailed1202310")
end

function Quest12023:OnSubStart1202311(arg1)
    print("OnSubStart1202311")
end

function Quest12023:OnSubFinish1202311(arg1)
    print("OnSubFinish1202311")
end

function Quest12023:OnSubFailed1202311(arg1)
    print("OnSubFailed1202311")
end

function Quest12023:OnSubStart1202302(arg1)
    print("OnSubStart1202302")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1037Data.id, 0)
        arg1_2:RequestInteraction(npcs.Npc1037Data.alias)
    end, nil, nil, "")

    globalActor:ChangeWeather("BigWorld/Weather_ClearSky")
end

function Quest12023:OnSubFinish1202302(arg1)
    print("OnSubFinish1202302")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
        globalActor:LeaveAllWeather()
    end)
end

function Quest12023:OnSubFailed1202302(arg1)
    print("OnSubFailed1202302")
end

function Quest12023:OnSubStart1202312(arg1)
    print("OnSubStart1202312")
end

function Quest12023:OnSubFinish1202312(arg1)
    print("OnSubFinish1202312")
end

function Quest12023:OnSubFailed1202312(arg1)
    print("OnSubFailed1202312")
end

function Quest12023:OnSubStart1202308(arg1)
    print("OnSubStart1202308")
    self:GetQuestNpcActor(npcs.Npc12178Data.alias):DoFreeStyle(1083, true, nil, true, true, true)
end

function Quest12023:OnSubFinish1202308(arg1)
    print("OnSubFinish1202308")
end

function Quest12023:OnSubFailed1202308(arg1)
    print("OnSubFailed1202308")
end

function Quest12023:OnSubStart1202309(arg1)
    print("OnSubStart1202309")
    self:GetQuestNpcActor(npcs.Npc12178Data.alias):DoFreeStyle(1083, true, nil, true, true, true)
end

function Quest12023:OnSubFinish1202309(arg1)
    print("OnSubFinish1202309")
end

function Quest12023:OnSubFailed1202309(arg1)
    print("OnSubFailed1202309")
end

function Quest12023:OnSubStart1202303(arg1)
    print("OnSubStart1202303")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12178Data.id, 0)
        arg1_2:GetQuestNpcActor(npcs.Npc12178Data.alias):DoFreeStyle(1083, true, nil, true, true, true)
    end)
end

function Quest12023:OnSubFinish1202303(arg1)
    print("OnSubFinish1202303")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    end)
end

function Quest12023:OnSubFailed1202303(arg1)
    print("OnSubFailed1202303")
end

function Quest12023:OnSubStart1202304(arg1)
    print("OnSubStart1202304")
    actorMgr:CreateActorWithPos("Q12023TriggerFail", "Actor/Gadget/Q12023TriggerFail", 70900002, 0, sceneData:GetDummyPoint(3, "Q12023_dual").pos, sceneData:GetDummyPoint(3, "Q12023_dual").rot, true, false, 3)
    self:CheckDistance()
end

function Quest12023:OnSubFinish1202304(arg1)
    print("OnSubFinish1202304")
    self:CallDelay(2, function(arg1_2)
        arg1_2:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc12126Data.id, 0)
            arg1_2:RequestInteraction(npcs.Npc12126Data.alias)
        end, nil, nil, "", false, false)
    end)
end

function Quest12023:OnSubFailed1202304(arg1)
    print("OnSubFailed1202304")
    self:CreateQuestNpc(arg1, npcs.Npc12178Data.id, 0)
end

function Quest12023:OnSubStart1202305(arg1)
    print("OnSubStart1202305")
end

function Quest12023:OnSubFinish1202305(arg1)
    print("OnSubFinish1202305")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    end)
end

function Quest12023:OnSubFailed1202305(arg1)
    print("OnSubFailed1202305")
end

function Quest12023:OnSubStart1202307(arg1)
    print("OnSubStart1202307")
end

function Quest12023:OnSubFinish1202307(arg1)
    print("OnSubFinish1202307")
end

function Quest12023:OnSubFailed1202307(arg1)
    print("OnSubFailed1202307")
end

function Quest12023:OnSubStart1202306(arg1)
    print("OnSubStart1202306")
end

function Quest12023:OnSubFinish1202306(arg1)
    print("OnSubFinish1202306")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
        arg1:DestroyQuestNpcActor(npcs.Npc1037Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc12067Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc3132Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc12126Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc12060Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc3140Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc12101Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc3133Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc12105Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc12204Data.alias, 3)
    end)
end

function Quest12023:OnSubFailed1202306(arg1)
    print("OnSubFailed1202306")
end

return Quest12023
