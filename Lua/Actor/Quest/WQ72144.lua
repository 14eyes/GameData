require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72144 = class("Quest72144", QuestActorProxy)
Quest72144.defaultAlias = "Quest72144"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72144:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72144:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7214401"] = self.OnSubStart7214401,
        ["7214410"] = self.OnSubStart7214410,
        ["7214411"] = self.OnSubStart7214411,
        ["7214413"] = self.OnSubStart7214413,
        ["7214403"] = self.OnSubStart7214403,
        ["7214404"] = self.OnSubStart7214404,
        ["7214405"] = self.OnSubStart7214405,
        ["7214406"] = self.OnSubStart7214406,
        ["7214407"] = self.OnSubStart7214407,
        ["7214408"] = self.OnSubStart7214408,
        ["7214412"] = self.OnSubStart7214412,
        ["7214414"] = self.OnSubStart7214414,
        ["7214409"] = self.OnSubStart7214409
    }
end

function Quest72144:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7214401"] = self.OnSubFinish7214401,
        ["7214410"] = self.OnSubFinish7214410,
        ["7214411"] = self.OnSubFinish7214411,
        ["7214413"] = self.OnSubFinish7214413,
        ["7214403"] = self.OnSubFinish7214403,
        ["7214404"] = self.OnSubFinish7214404,
        ["7214405"] = self.OnSubFinish7214405,
        ["7214406"] = self.OnSubFinish7214406,
        ["7214407"] = self.OnSubFinish7214407,
        ["7214408"] = self.OnSubFinish7214408,
        ["7214412"] = self.OnSubFinish7214412,
        ["7214414"] = self.OnSubFinish7214414,
        ["7214409"] = self.OnSubFinish7214409
    }
end

function Quest72144:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7214401"] = self.OnSubFailed7214401,
        ["7214410"] = self.OnSubFailed7214410,
        ["7214411"] = self.OnSubFailed7214411,
        ["7214413"] = self.OnSubFailed7214413,
        ["7214403"] = self.OnSubFailed7214403,
        ["7214404"] = self.OnSubFailed7214404,
        ["7214405"] = self.OnSubFailed7214405,
        ["7214406"] = self.OnSubFailed7214406,
        ["7214407"] = self.OnSubFailed7214407,
        ["7214408"] = self.OnSubFailed7214408,
        ["7214412"] = self.OnSubFailed7214412,
        ["7214414"] = self.OnSubFailed7214414,
        ["7214409"] = self.OnSubFailed7214409
    }
end

function Quest72144:Start()
    print("Start")
end

function Quest72144:OnDestroy()
    print("OnDestroy")
end

function Quest72144:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72144:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72144:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72144:DestroyNPC()
    print("DestroyNPC")
    self:SafeDestroyQuestNpc(npcs.Npc308801Data.alias, 3)
end

function Quest72144:CreateNPC()
    print("CreateNPC")
    self:CreateQuestNpcById(7214403, npcs.Npc308801Data.id, 0)
end

function Quest72144:DestroyYaner()
    print("DestroyYaner")
    self:SafeDestroyQuestNpc(npcs.NPC20082Data.alias, 3)
end

function Quest72144:CreateYaner()
    print("CreateYaner")
    self:CreateQuestNpcById(7214408, npcs.NPC20082Data.id, 1)
end

function Quest72144:DestroyGHandAS()
    print("DestroyGHandAS")
    self:SafeDestroyQuestNpc(npcs.Npc20260Data.alias, 3)
end

function Quest72144:CreateGHFinal()
    print("CreateGHFinal")
    self:CreateQuestNpcById(7214404, npcs.Npc308801Data.id, 0)
end

function Quest72144:OnSubStart7214401(arg1)
    print("OnSubStart7214401")
    self:CreateQuestNpc(arg1, npcs.Npc20260Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc308801Data.id, 2)
    self:NotifyTo(npcs.Npc3088Data.alias, 1, true)
    self:CreateSpeechBubbleTask(npcs.Npc308801Data.id, 1016308801, 5, true, 5, 5)
end

function Quest72144:OnSubFinish7214401(arg1)
    print("OnSubFinish7214401")
    self:ClearSpeechBubbleTask()
end

function Quest72144:OnSubFailed7214401(arg1)
    print("OnSubFailed7214401")
end

function Quest72144:OnSubStart7214410(arg1)
    print("OnSubStart7214410")
    self:CreateQuestNpc(arg1, npcs.Npc20260Data.id, 1)
    self:NotifyTo(npcs.Npc3088Data.alias, 1, true)
    self:CreateSpeechBubbleTask(npcs.Npc308801Data.id, 1016308801, 5, true, 5, 5)
end

function Quest72144:OnSubFinish7214410(arg1)
    print("OnSubFinish7214410")
    self:ClearSpeechBubbleTask()
end

function Quest72144:OnSubFailed7214410(arg1)
    print("OnSubFailed7214410")
end

function Quest72144:OnSubStart7214411(arg1)
    print("OnSubStart7214411")
    self:CreateQuestNpc(arg1, npcs.Npc20260Data.id, 1)
    self:NotifyTo(npcs.Npc3088Data.alias, 1, true)
end

function Quest72144:OnSubFinish7214411(arg1)
    print("OnSubFinish7214411")
end

function Quest72144:OnSubFailed7214411(arg1)
    print("OnSubFailed7214411")
end

function Quest72144:OnSubStart7214413(arg1)
    print("OnSubStart7214413")
    self:CreateQuestNpc(arg1, npcs.Npc20260Data.id, 1)
    self:NotifyTo(npcs.Npc3088Data.alias, 1, true)
end

function Quest72144:OnSubFinish7214413(arg1)
    print("OnSubFinish7214413")
    self:ShowBlackScreen(0.5, 1, 0.5, self.DestroyNPC, nil, nil, "", false, true)
end

function Quest72144:OnSubFailed7214413(arg1)
    print("OnSubFailed7214413")
end

function Quest72144:OnSubStart7214403(arg1)
    print("OnSubStart7214403")
    self:CreateQuestNpc(arg1, npcs.Npc20260Data.id, 1)
    self:NotifyTo(npcs.Npc3088Data.alias, 1, true)
    actorMgr:CreateActorWithPos(datas.Q7214403Trigger_.alias, datas.Q7214403Trigger_.script, datas.Q7214403Trigger_.id, 0, datas.Q7214403Trigger_.point.pos, datas.Q7214403Trigger_.point.rot, true, false, 3)
end

function Quest72144:OnSubFinish7214403(arg1)
    print("OnSubFinish7214403")
    self:ShowBlackScreen(0.5, 1, 0.5, self.DestroyNPC, nil, nil, "")
end

function Quest72144:OnSubFailed7214403(arg1)
    print("OnSubFailed7214403")
end

function Quest72144:OnSubStart7214404(arg1)
    print("OnSubStart7214404")
    self:CreateQuestNpc(arg1, npcs.Npc308801Data.id, 1)
    self:NotifyTo(npcs.Npc3088Data.alias, 1, true)
    self:CallDelay(0.3, self.CreateGHFinal)
end

function Quest72144:OnSubFinish7214404(arg1)
    print("OnSubFinish7214404")
    self:SafeDestroyQuestNpc(npcs.Npc20260Data.alias, 3)
end

function Quest72144:OnSubFailed7214404(arg1)
    print("OnSubFailed7214404")
end

function Quest72144:OnSubStart7214405(arg1)
    print("OnSubStart7214405")
    self:CreateQuestNpc(arg1, npcs.Npc308801Data.id, 1)
    self:NotifyTo(npcs.Npc3088Data.alias, 1, true)
end

function Quest72144:OnSubFinish7214405(arg1)
    print("OnSubFinish7214405")
end

function Quest72144:OnSubFailed7214405(arg1)
    print("OnSubFailed7214405")
end

function Quest72144:OnSubStart7214406(arg1)
    print("OnSubStart7214406")
    self:CreateQuestNpc(arg1, npcs.NPC20082Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc308801Data.id, 2)
    self:NotifyTo(npcs.Npc3088Data.alias, 1, true)
end

function Quest72144:OnSubFinish7214406(arg1)
    print("OnSubFinish7214406")
    self:ShowBlackScreen(0.5, 1, 0.5, self.DestroyYaner, nil, nil, "")
end

function Quest72144:OnSubFailed7214406(arg1)
    print("OnSubFailed7214406")
end

function Quest72144:OnSubStart7214407(arg1)
    print("OnSubStart7214407")
    self:CreateQuestNpc(arg1, npcs.Npc308801Data.id, 1)
    self:NotifyTo(npcs.Npc3088Data.alias, 1, true)
end

function Quest72144:OnSubFinish7214407(arg1)
    print("OnSubFinish7214407")
end

function Quest72144:OnSubFailed7214407(arg1)
    print("OnSubFailed7214407")
end

function Quest72144:OnSubStart7214408(arg1)
    print("OnSubStart7214408")
    self:CreateQuestNpc(arg1, npcs.Npc308801Data.id, 2)
    self:NotifyTo(npcs.Npc3088Data.alias, 1, true)
    self:ShowBlackScreen(0.5, 1, 0.5, self.CreateYaner, nil, nil, "")
end

function Quest72144:OnSubFinish7214408(arg1)
    print("OnSubFinish7214408")
end

function Quest72144:OnSubFailed7214408(arg1)
    print("OnSubFailed7214408")
end

function Quest72144:OnSubStart7214412(arg1)
    print("OnSubStart7214412")
    self:CreateQuestNpc(arg1, npcs.Npc308801Data.id, 1)
    self:NotifyTo(npcs.Npc3088Data.alias, 1, true)
end

function Quest72144:OnSubFinish7214412(arg1)
    print("OnSubFinish7214412")
end

function Quest72144:OnSubFailed7214412(arg1)
    print("OnSubFailed7214412")
end

function Quest72144:OnSubStart7214414(arg1)
    print("OnSubStart7214414")
    self:CreateQuestNpc(arg1, npcs.Npc308801Data.id, 1)
    self:NotifyTo(npcs.Npc3088Data.alias, 1, true)
end

function Quest72144:OnSubFinish7214414(arg1)
    print("OnSubFinish7214414")
    self:ShowBlackScreen(0.5, 1, 0.5, self.DestroyYaner, nil, nil, "", false, true)
end

function Quest72144:OnSubFailed7214414(arg1)
    print("OnSubFailed7214414")
end

function Quest72144:OnSubStart7214409(arg1)
    print("OnSubStart7214409")
    self:CreateQuestNpc(arg1, npcs.Npc308801Data.id, 1)
    self:NotifyTo(npcs.Npc3088Data.alias, 1, true)
end

function Quest72144:OnSubFinish7214409(arg1)
    print("OnSubFinish7214409")
    self:ShowBlackScreen(0.5, 1, 0.5, self.DestroyNPC, nil, nil, "")
    self:NotifyTo(npcs.Npc3088Data.alias, 0, true)
end

function Quest72144:OnSubFailed7214409(arg1)
    print("OnSubFailed7214409")
end

return Quest72144
