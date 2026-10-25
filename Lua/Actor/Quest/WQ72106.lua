require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72106 = class("Quest72106", QuestActorProxy)
Quest72106.defaultAlias = "Quest72106"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72106:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72106:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7210601"] = self.OnSubStart7210601,
        ["7210602"] = self.OnSubStart7210602,
        ["7210622"] = self.OnSubStart7210622,
        ["7210626"] = self.OnSubStart7210626,
        ["7210603"] = self.OnSubStart7210603,
        ["7210621"] = self.OnSubStart7210621,
        ["7210604"] = self.OnSubStart7210604,
        ["7210605"] = self.OnSubStart7210605,
        ["7210606"] = self.OnSubStart7210606,
        ["7210607"] = self.OnSubStart7210607,
        ["7210608"] = self.OnSubStart7210608,
        ["7210609"] = self.OnSubStart7210609,
        ["7210610"] = self.OnSubStart7210610,
        ["7210611"] = self.OnSubStart7210611,
        ["7210618"] = self.OnSubStart7210618,
        ["7210619"] = self.OnSubStart7210619,
        ["7210623"] = self.OnSubStart7210623,
        ["7210624"] = self.OnSubStart7210624,
        ["7210625"] = self.OnSubStart7210625,
        ["7210628"] = self.OnSubStart7210628,
        ["7210612"] = self.OnSubStart7210612,
        ["7210613"] = self.OnSubStart7210613,
        ["7210614"] = self.OnSubStart7210614,
        ["7210615"] = self.OnSubStart7210615,
        ["7210627"] = self.OnSubStart7210627,
        ["7210616"] = self.OnSubStart7210616,
        ["7210631"] = self.OnSubStart7210631,
        ["7210617"] = self.OnSubStart7210617,
        ["7210620"] = self.OnSubStart7210620,
        ["7210630"] = self.OnSubStart7210630,
        ["7210629"] = self.OnSubStart7210629,
        ["7210632"] = self.OnSubStart7210632
    }
end

function Quest72106:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7210601"] = self.OnSubFinish7210601,
        ["7210602"] = self.OnSubFinish7210602,
        ["7210622"] = self.OnSubFinish7210622,
        ["7210626"] = self.OnSubFinish7210626,
        ["7210603"] = self.OnSubFinish7210603,
        ["7210621"] = self.OnSubFinish7210621,
        ["7210604"] = self.OnSubFinish7210604,
        ["7210605"] = self.OnSubFinish7210605,
        ["7210606"] = self.OnSubFinish7210606,
        ["7210607"] = self.OnSubFinish7210607,
        ["7210608"] = self.OnSubFinish7210608,
        ["7210609"] = self.OnSubFinish7210609,
        ["7210610"] = self.OnSubFinish7210610,
        ["7210611"] = self.OnSubFinish7210611,
        ["7210618"] = self.OnSubFinish7210618,
        ["7210619"] = self.OnSubFinish7210619,
        ["7210623"] = self.OnSubFinish7210623,
        ["7210624"] = self.OnSubFinish7210624,
        ["7210625"] = self.OnSubFinish7210625,
        ["7210628"] = self.OnSubFinish7210628,
        ["7210612"] = self.OnSubFinish7210612,
        ["7210613"] = self.OnSubFinish7210613,
        ["7210614"] = self.OnSubFinish7210614,
        ["7210615"] = self.OnSubFinish7210615,
        ["7210627"] = self.OnSubFinish7210627,
        ["7210616"] = self.OnSubFinish7210616,
        ["7210631"] = self.OnSubFinish7210631,
        ["7210617"] = self.OnSubFinish7210617,
        ["7210620"] = self.OnSubFinish7210620,
        ["7210630"] = self.OnSubFinish7210630,
        ["7210629"] = self.OnSubFinish7210629,
        ["7210632"] = self.OnSubFinish7210632
    }
end

function Quest72106:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7210601"] = self.OnSubFailed7210601,
        ["7210602"] = self.OnSubFailed7210602,
        ["7210622"] = self.OnSubFailed7210622,
        ["7210626"] = self.OnSubFailed7210626,
        ["7210603"] = self.OnSubFailed7210603,
        ["7210621"] = self.OnSubFailed7210621,
        ["7210604"] = self.OnSubFailed7210604,
        ["7210605"] = self.OnSubFailed7210605,
        ["7210606"] = self.OnSubFailed7210606,
        ["7210607"] = self.OnSubFailed7210607,
        ["7210608"] = self.OnSubFailed7210608,
        ["7210609"] = self.OnSubFailed7210609,
        ["7210610"] = self.OnSubFailed7210610,
        ["7210611"] = self.OnSubFailed7210611,
        ["7210618"] = self.OnSubFailed7210618,
        ["7210619"] = self.OnSubFailed7210619,
        ["7210623"] = self.OnSubFailed7210623,
        ["7210624"] = self.OnSubFailed7210624,
        ["7210625"] = self.OnSubFailed7210625,
        ["7210628"] = self.OnSubFailed7210628,
        ["7210612"] = self.OnSubFailed7210612,
        ["7210613"] = self.OnSubFailed7210613,
        ["7210614"] = self.OnSubFailed7210614,
        ["7210615"] = self.OnSubFailed7210615,
        ["7210627"] = self.OnSubFailed7210627,
        ["7210616"] = self.OnSubFailed7210616,
        ["7210631"] = self.OnSubFailed7210631,
        ["7210617"] = self.OnSubFailed7210617,
        ["7210620"] = self.OnSubFailed7210620,
        ["7210630"] = self.OnSubFailed7210630,
        ["7210629"] = self.OnSubFailed7210629,
        ["7210632"] = self.OnSubFailed7210632
    }
end

function Quest72106:Start()
    print("Start")
end

function Quest72106:OnDestroy()
    print("OnDestroy")
end

function Quest72106:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72106:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72106:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72106:Callrequestinteraction()
    print("Callrequestinteraction")
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    local n = -0.05
    local v = 1
    avatarPos.x = avatarPos.x + avatarForward.x * n
    avatarPos.z = avatarPos.z + avatarForward.z * v
    print(avatarForward.x .. "," .. avatarForward.y .. "," .. avatarForward.z)
    local v2 = avatarForward
    v2.x = v2.x * -0.1
    v2.z = v2.z * -1
    self.CreateQuestNpcByIdWithPos(self, 7210621, npcs.PaimonData.id, 4, avatarPos, M.Dir2Euler(v2))
    self.CallDelay(self, 1, function()
        self:RequestInteraction(npcs.PaimonData.alias)
    end)
end

function Quest72106:INputON()
    print("INputON")
    self:EnablePlayerInput(true)
end

function Quest72106:destoryNPC()
    print("destoryNPC")
    self:SafeDestroyQuestNpc(npcs.Npc20222Data.alias, 3)
end

function Quest72106:FinishQuest()
    print("FinishQuest")
    self.FinishQuestID(false, 7210631)
end

function Quest72106:INputOFF()
    print("INputOFF")
    self:EnablePlayerInput(false)
end

function Quest72106:OnSubStart7210601(arg1)
    print("OnSubStart7210601")
    self:CreateQuestNpc(arg1, npcs.Npc20222Data.id, 1)
    self:NotifyTo(npcs.Npc3168Data.alias, 1, true)
end

function Quest72106:OnSubFinish7210601(arg1)
    print("OnSubFinish7210601")
end

function Quest72106:OnSubFailed7210601(arg1)
    print("OnSubFailed7210601")
end

function Quest72106:OnSubStart7210602(arg1)
    print("OnSubStart7210602")
    self:CreateQuestNpc(arg1, npcs.Npc20222Data.id, 1)
    self:NotifyTo(npcs.Npc3168Data.alias, 1, true)
    self:GetQuestNpcActor(npcs.Npc3152Data.alias):DoFreeStyle(5020, true, nil, true, true, false)
end

function Quest72106:OnSubFinish7210602(arg1)
    print("OnSubFinish7210602")
    self:SafeDestroyQuestNpc(npcs.Npc20222Data.alias, 3)
    self:ShowBlackScreen(0.1, 0.5, 0.5, self.destoryNPC, nil, nil, "", false, true)
end

function Quest72106:OnSubFailed7210602(arg1)
    print("OnSubFailed7210602")
end

function Quest72106:OnSubStart7210622(arg1)
    print("OnSubStart7210622")
end

function Quest72106:OnSubFinish7210622(arg1)
    print("OnSubFinish7210622")
end

function Quest72106:OnSubFailed7210622(arg1)
    print("OnSubFailed7210622")
end

function Quest72106:OnSubStart7210626(arg1)
    print("OnSubStart7210626")
end

function Quest72106:OnSubFinish7210626(arg1)
    print("OnSubFinish7210626")
end

function Quest72106:OnSubFailed7210626(arg1)
    print("OnSubFailed7210626")
end

function Quest72106:OnSubStart7210603(arg1)
    print("OnSubStart7210603")
    self:CreateQuestNpc(arg1, npcs.Npc20221Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc3152Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc3153Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc3154Data.id, 4)
    self:NotifyTo(npcs.Npc3168Data.alias, 1, true)
    self:GetQuestNpcActor(npcs.Npc3152Data.alias):DoFreeStyle(5020, true, nil, true, true, false)
end

function Quest72106:OnSubFinish7210603(arg1)
    print("OnSubFinish7210603")
    self:ShowBlackScreen(0.5, 0.5, 0.5, nil, nil, nil, "")
end

function Quest72106:OnSubFailed7210603(arg1)
    print("OnSubFailed7210603")
end

function Quest72106:OnSubStart7210621(arg1)
    print("OnSubStart7210621")
    self:CreateQuestNpc(arg1, npcs.Npc3152Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc3153Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc3154Data.id, 3)
    self:LightNotifyTo(npcs.Npc3168Data.alias, 0, true)
    self:CallDelay(0, self.Callrequestinteraction)
    self:CallDelay(0, self.INputOFF)
    self:CallDelay(1, self.INputON)
end

function Quest72106:OnSubFinish7210621(arg1)
    print("OnSubFinish7210621")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest72106:OnSubFailed7210621(arg1)
    print("OnSubFailed7210621")
end

function Quest72106:OnSubStart7210604(arg1)
    print("OnSubStart7210604")
    self:CreateQuestNpc(arg1, npcs.Npc3152Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc3153Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc3154Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc3152Data.alias):DoFreeStyle(5020, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest72106:OnSubFinish7210604(arg1)
    print("OnSubFinish7210604")
end

function Quest72106:OnSubFailed7210604(arg1)
    print("OnSubFailed7210604")
end

function Quest72106:OnSubStart7210605(arg1)
    print("OnSubStart7210605")
    self:CreateQuestNpc(arg1, npcs.Npc3152Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc3153Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc3154Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc3152Data.alias):DoFreeStyle(5020, true, nil, true, true, false)
end

function Quest72106:OnSubFinish7210605(arg1)
    print("OnSubFinish7210605")
end

function Quest72106:OnSubFailed7210605(arg1)
    print("OnSubFailed7210605")
end

function Quest72106:OnSubStart7210606(arg1)
    print("OnSubStart7210606")
    self:CreateQuestNpc(arg1, npcs.Npc3152Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc3153Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc3154Data.id, 3)
end

function Quest72106:OnSubFinish7210606(arg1)
    print("OnSubFinish7210606")
end

function Quest72106:OnSubFailed7210606(arg1)
    print("OnSubFailed7210606")
end

function Quest72106:OnSubStart7210607(arg1)
    print("OnSubStart7210607")
    self:CreateQuestNpc(arg1, npcs.Npc3152Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc3153Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc3154Data.id, 3)
end

function Quest72106:OnSubFinish7210607(arg1)
    print("OnSubFinish7210607")
end

function Quest72106:OnSubFailed7210607(arg1)
    print("OnSubFailed7210607")
end

function Quest72106:OnSubStart7210608(arg1)
    print("OnSubStart7210608")
    self:CreateQuestNpc(arg1, npcs.Npc3152Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc3153Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc3154Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc3152Data.alias):DoFreeStyle(5020, true, nil, true, true, false)
end

function Quest72106:OnSubFinish7210608(arg1)
    print("OnSubFinish7210608")
end

function Quest72106:OnSubFailed7210608(arg1)
    print("OnSubFailed7210608")
end

function Quest72106:OnSubStart7210609(arg1)
    print("OnSubStart7210609")
    self:CreateQuestNpc(arg1, npcs.Npc3152Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc3153Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc3154Data.id, 3)
end

function Quest72106:OnSubFinish7210609(arg1)
    print("OnSubFinish7210609")
end

function Quest72106:OnSubFailed7210609(arg1)
    print("OnSubFailed7210609")
end

function Quest72106:OnSubStart7210610(arg1)
    print("OnSubStart7210610")
    self:CreateQuestNpc(arg1, npcs.Npc3152Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc3153Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc3154Data.id, 3)
end

function Quest72106:OnSubFinish7210610(arg1)
    print("OnSubFinish7210610")
end

function Quest72106:OnSubFailed7210610(arg1)
    print("OnSubFailed7210610")
end

function Quest72106:OnSubStart7210611(arg1)
    print("OnSubStart7210611")
    self:CreateQuestNpc(arg1, npcs.Npc3152Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc3153Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc3154Data.id, 3)
end

function Quest72106:OnSubFinish7210611(arg1)
    print("OnSubFinish7210611")
end

function Quest72106:OnSubFailed7210611(arg1)
    print("OnSubFailed7210611")
end

function Quest72106:OnSubStart7210618(arg1)
    print("OnSubStart7210618")
    self:CreateQuestNpc(arg1, npcs.Npc3152Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc3153Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc3154Data.id, 3)
end

function Quest72106:OnSubFinish7210618(arg1)
    print("OnSubFinish7210618")
end

function Quest72106:OnSubFailed7210618(arg1)
    print("OnSubFailed7210618")
end

function Quest72106:OnSubStart7210619(arg1)
    print("OnSubStart7210619")
    self:CreateQuestNpc(arg1, npcs.Npc3152Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc3153Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc3154Data.id, 3)
end

function Quest72106:OnSubFinish7210619(arg1)
    print("OnSubFinish7210619")
end

function Quest72106:OnSubFailed7210619(arg1)
    print("OnSubFailed7210619")
end

function Quest72106:OnSubStart7210623(arg1)
    print("OnSubStart7210623")
    self:CreateQuestNpc(arg1, npcs.Npc3152Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc3153Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc3154Data.id, 3)
end

function Quest72106:OnSubFinish7210623(arg1)
    print("OnSubFinish7210623")
end

function Quest72106:OnSubFailed7210623(arg1)
    print("OnSubFailed7210623")
end

function Quest72106:OnSubStart7210624(arg1)
    print("OnSubStart7210624")
    self:CreateQuestNpc(arg1, npcs.Npc3152Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc3153Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc3154Data.id, 3)
end

function Quest72106:OnSubFinish7210624(arg1)
    print("OnSubFinish7210624")
end

function Quest72106:OnSubFailed7210624(arg1)
    print("OnSubFailed7210624")
end

function Quest72106:OnSubStart7210625(arg1)
    print("OnSubStart7210625")
    self:CreateQuestNpc(arg1, npcs.Npc3152Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc3153Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc3154Data.id, 3)
end

function Quest72106:OnSubFinish7210625(arg1)
    print("OnSubFinish7210625")
end

function Quest72106:OnSubFailed7210625(arg1)
    print("OnSubFailed7210625")
end

function Quest72106:OnSubStart7210628(arg1)
    print("OnSubStart7210628")
    self:CreateQuestNpc(arg1, npcs.Npc3152Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc3153Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc3154Data.id, 3)
end

function Quest72106:OnSubFinish7210628(arg1)
    print("OnSubFinish7210628")
end

function Quest72106:OnSubFailed7210628(arg1)
    print("OnSubFailed7210628")
end

function Quest72106:OnSubStart7210612(arg1)
    print("OnSubStart7210612")
    self:CreateQuestNpc(arg1, npcs.Npc3152Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc3153Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc3154Data.id, 3)
end

function Quest72106:OnSubFinish7210612(arg1)
    print("OnSubFinish7210612")
end

function Quest72106:OnSubFailed7210612(arg1)
    print("OnSubFailed7210612")
end

function Quest72106:OnSubStart7210613(arg1)
    print("OnSubStart7210613")
    self:CreateQuestNpc(arg1, npcs.Npc3152Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc3153Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc3154Data.id, 3)
end

function Quest72106:OnSubFinish7210613(arg1)
    print("OnSubFinish7210613")
end

function Quest72106:OnSubFailed7210613(arg1)
    print("OnSubFailed7210613")
end

function Quest72106:OnSubStart7210614(arg1)
    print("OnSubStart7210614")
    self:CreateQuestNpc(arg1, npcs.Npc3152Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc3153Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc3154Data.id, 3)
end

function Quest72106:OnSubFinish7210614(arg1)
    print("OnSubFinish7210614")
end

function Quest72106:OnSubFailed7210614(arg1)
    print("OnSubFailed7210614")
end

function Quest72106:OnSubStart7210615(arg1)
    print("OnSubStart7210615")
    self:CreateQuestNpc(arg1, npcs.Npc3152Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc3153Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc3154Data.id, 3)
end

function Quest72106:OnSubFinish7210615(arg1)
    print("OnSubFinish7210615")
    self:SafeDestroyQuestNpc(npcs.Npc20221Data.alias, 3)
end

function Quest72106:OnSubFailed7210615(arg1)
    print("OnSubFailed7210615")
end

function Quest72106:OnSubStart7210627(arg1)
    print("OnSubStart7210627")
    self:CreateQuestNpc(arg1, npcs.Npc3152Data.id, 1)
    self:LightNotifyTo(npcs.Npc3152Data.alias, 0, true)
    self:CreateQuestNpc(arg1, npcs.Npc3153Data.id, 2)
    self:LightNotifyTo(npcs.Npc3153Data.alias, 0, true)
    self:CreateQuestNpc(arg1, npcs.Npc3154Data.id, 3)
    self:LightNotifyTo(npcs.Npc3154Data.alias, 0, true)
end

function Quest72106:OnSubFinish7210627(arg1)
    print("OnSubFinish7210627")
    self:SafeDestroyQuestNpc(npcs.Npc3152Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3153Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3154Data.alias, 3)
end

function Quest72106:OnSubFailed7210627(arg1)
    print("OnSubFailed7210627")
end

function Quest72106:OnSubStart7210616(arg1)
    print("OnSubStart7210616")
end

function Quest72106:OnSubFinish7210616(arg1)
    print("OnSubFinish7210616")
    self:GetQuestNpcActor(npcs.Npc20221Data.alias):DestroyWithDither(false, 3)
end

function Quest72106:OnSubFailed7210616(arg1)
    print("OnSubFailed7210616")
end

function Quest72106:OnSubStart7210631(arg1)
    print("OnSubStart7210631")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        actorUtils.FinishQuestID(false, 7210631)
    end, nil, nil, "", false, true)
end

function Quest72106:OnSubFinish7210631(arg1)
    print("OnSubFinish7210631")
end

function Quest72106:OnSubFailed7210631(arg1)
    print("OnSubFailed7210631")
end

function Quest72106:OnSubStart7210617(arg1)
    print("OnSubStart7210617")
end

function Quest72106:OnSubFinish7210617(arg1)
    print("OnSubFinish7210617")
end

function Quest72106:OnSubFailed7210617(arg1)
    print("OnSubFailed7210617")
end

function Quest72106:OnSubStart7210620(arg1)
    print("OnSubStart7210620")
end

function Quest72106:OnSubFinish7210620(arg1)
    print("OnSubFinish7210620")
end

function Quest72106:OnSubFailed7210620(arg1)
    print("OnSubFailed7210620")
end

function Quest72106:OnSubStart7210630(arg1)
    print("OnSubStart7210630")
end

function Quest72106:OnSubFinish7210630(arg1)
    print("OnSubFinish7210630")
end

function Quest72106:OnSubFailed7210630(arg1)
    print("OnSubFailed7210630")
end

function Quest72106:OnSubStart7210629(arg1)
    print("OnSubStart7210629")
end

function Quest72106:OnSubFinish7210629(arg1)
    print("OnSubFinish7210629")
end

function Quest72106:OnSubFailed7210629(arg1)
    print("OnSubFailed7210629")
end

function Quest72106:OnSubStart7210632(arg1)
    print("OnSubStart7210632")
end

function Quest72106:OnSubFinish7210632(arg1)
    print("OnSubFinish7210632")
end

function Quest72106:OnSubFailed7210632(arg1)
    print("OnSubFailed7210632")
end

return Quest72106
