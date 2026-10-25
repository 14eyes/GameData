require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71054 = class("Quest71054", QuestActorProxy)
Quest71054.defaultAlias = "Quest71054"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest71054:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71054:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7105401"] = self.OnSubStart7105401,
        ["7105402"] = self.OnSubStart7105402,
        ["7105403"] = self.OnSubStart7105403,
        ["7105404"] = self.OnSubStart7105404,
        ["7105405"] = self.OnSubStart7105405,
        ["7105406"] = self.OnSubStart7105406,
        ["7105407"] = self.OnSubStart7105407,
        ["7105408"] = self.OnSubStart7105408,
        ["7105409"] = self.OnSubStart7105409,
        ["7105410"] = self.OnSubStart7105410,
        ["7105411"] = self.OnSubStart7105411,
        ["7105412"] = self.OnSubStart7105412,
        ["7105413"] = self.OnSubStart7105413
    }
end

function Quest71054:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7105401"] = self.OnSubFinish7105401,
        ["7105402"] = self.OnSubFinish7105402,
        ["7105403"] = self.OnSubFinish7105403,
        ["7105404"] = self.OnSubFinish7105404,
        ["7105405"] = self.OnSubFinish7105405,
        ["7105406"] = self.OnSubFinish7105406,
        ["7105407"] = self.OnSubFinish7105407,
        ["7105408"] = self.OnSubFinish7105408,
        ["7105409"] = self.OnSubFinish7105409,
        ["7105410"] = self.OnSubFinish7105410,
        ["7105411"] = self.OnSubFinish7105411,
        ["7105412"] = self.OnSubFinish7105412,
        ["7105413"] = self.OnSubFinish7105413
    }
end

function Quest71054:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71054:Start()
    print("Start")
end

function Quest71054:OnDestroy()
    print("OnDestroy")
end

function Quest71054:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71054:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71054:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71054:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest71054:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest71054:OnSubStart7105401(arg1)
    print("OnSubStart7105401")
end

function Quest71054:OnSubFinish7105401(arg1)
    print("OnSubFinish7105401")
    self:TransmitPlayerById(arg1, 1)
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest71054:OnSubStart7105402(arg1)
    print("OnSubStart7105402")
    self:NpcCreate(arg1, npcs.Npc20527Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20612Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc20612Data.alias):DoFreeStyle(1230, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc20613Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc20613Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
end

function Quest71054:OnSubFinish7105402(arg1)
    print("OnSubFinish7105402")
    self:SafeDestroyQuestNpc(npcs.Npc20612Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20613Data.alias, 3)
    self:ShowBlackScreen(0.5, 2, 0.5, nil, nil, nil, "", false, true)
end

function Quest71054:OnSubStart7105403(arg1)
    print("OnSubStart7105403")
    self:CreateQuestNpc(arg1, npcs.Npc20527Data.id, 1)
end

function Quest71054:OnSubFinish7105403(arg1)
    print("OnSubFinish7105403")
end

function Quest71054:OnSubStart7105404(arg1)
    print("OnSubStart7105404")
    self:NpcCreate(arg1, npcs.Npc20527Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20527Data.alias):DoFreeStyle(1230, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc20612Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc20612Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc20613Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc20613Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
end

function Quest71054:OnSubFinish7105404(arg1)
    print("OnSubFinish7105404")
    self:SafeDestroyQuestNpc(npcs.Npc20612Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20613Data.alias, 3)
end

function Quest71054:OnSubStart7105405(arg1)
    print("OnSubStart7105405")
    self:NpcCreate(arg1, npcs.Npc20527Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20527Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc20612Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc20612Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc20613Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc20613Data.alias):DoFreeStyle(1230, true, nil, true, true, false)
end

function Quest71054:OnSubFinish7105405(arg1)
    print("OnSubFinish7105405")
    self:SafeDestroyQuestNpc(npcs.Npc20612Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20613Data.alias, 3)
end

function Quest71054:OnSubStart7105406(arg1)
    print("OnSubStart7105406")
    self:NpcCreate(arg1, npcs.Npc20527Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20527Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc20612Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc20612Data.alias):DoFreeStyle(1230, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc20613Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc20613Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
end

function Quest71054:OnSubFinish7105406(arg1)
    print("OnSubFinish7105406")
    self:SafeDestroyQuestNpc(npcs.Npc20612Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20613Data.alias, 3)
end

function Quest71054:OnSubStart7105407(arg1)
    print("OnSubStart7105407")
end

function Quest71054:OnSubFinish7105407(arg1)
    print("OnSubFinish7105407")
end

function Quest71054:OnSubStart7105408(arg1)
    print("OnSubStart7105408")
end

function Quest71054:OnSubFinish7105408(arg1)
    print("OnSubFinish7105408")
end

function Quest71054:OnSubStart7105409(arg1)
    print("OnSubStart7105409")
end

function Quest71054:OnSubFinish7105409(arg1)
    print("OnSubFinish7105409")
end

function Quest71054:OnSubStart7105410(arg1)
    print("OnSubStart7105410")
end

function Quest71054:OnSubFinish7105410(arg1)
    print("OnSubFinish7105410")
end

function Quest71054:OnSubStart7105411(arg1)
    print("OnSubStart7105411")
end

function Quest71054:OnSubFinish7105411(arg1)
    print("OnSubFinish7105411")
end

function Quest71054:OnSubStart7105412(arg1)
    print("OnSubStart7105412")
end

function Quest71054:OnSubFinish7105412(arg1)
    print("OnSubFinish7105412")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20527Data.alias)
    self:TransmitPlayerById(arg1, 2)
end

function Quest71054:OnSubStart7105413(arg1)
    print("OnSubStart7105413")
    self:NpcCreate(arg1, npcs.Npc2169Data.id, 1)
end

function Quest71054:OnSubFinish7105413(arg1)
    print("OnSubFinish7105413")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc2169Data.alias)
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

return Quest71054
