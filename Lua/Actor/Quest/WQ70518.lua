require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70518 = class("Quest70518", QuestActorProxy)
Quest70518.defaultAlias = "Quest70518"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest70518:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest70518:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7051801"] = self.OnSubStart7051801,
        ["7051804"] = self.OnSubStart7051804,
        ["7051802"] = self.OnSubStart7051802,
        ["7051805"] = self.OnSubStart7051805,
        ["7051803"] = self.OnSubStart7051803
    }
end

function Quest70518:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7051801"] = self.OnSubFinish7051801,
        ["7051804"] = self.OnSubFinish7051804,
        ["7051802"] = self.OnSubFinish7051802,
        ["7051805"] = self.OnSubFinish7051805,
        ["7051803"] = self.OnSubFinish7051803
    }
end

function Quest70518:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70518:Start()
    print("Start")
end

function Quest70518:OnDestroy()
    print("OnDestroy")
end

function Quest70518:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70518:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70518:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ClearNarratorTask()
    self:SafeDestroyQuestNpc(npcs.Npc30274Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30235Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.BarbaraData.alias, 3)
    actorMgr:DestroyEntityActor("Q7051801Trigger", 3, false)
end

function Quest70518:NpcCreateWithTriggerBlack(arg1, arg2, arg3)
    self:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, 5, 1)
end

function Quest70518:OnSubStart7051801(arg1)
    print("OnSubStart7051801")
    self:CreateQuestNpc(arg1, npcs.Npc30274Data.id, 1)
    actorMgr:CreateActorWithPos("Q7051801Trigger", "Actor/Gadget/Q7051801Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7051801_N30234").pos, sceneData:GetDummyPoint(3, "Q7051801_N30234").rot, true, false, 3)
    self:AfterMainPageActiveSafeCall(function(arg1)
        if arg1:GetQuestVar(7051801, 0) == 0 then
            arg1:CallDelay(1, function(arg1)
                arg1:NarratorOnlyTaskByData(datas.NarratorWithId01, function(arg1)
                    arg1:SetQuestVarByMainId(0, 1)
                end)
            end)
        end
    end)

    self:GetQuestNpcActor(npcs.Npc30274Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest70518:OnSubFinish7051801(arg1)
    print("OnSubFinish7051801")
end

function Quest70518:OnSubStart7051804(arg1)
    print("OnSubStart7051804")
    self:NpcCreateWithTriggerBlack(npcs.Npc30274Data.id, 7051804, 1)
end

function Quest70518:OnSubFinish7051804(arg1)
    print("OnSubFinish7051804")
    self:SafeDestroyQuestNpc(npcs.Npc30274Data.alias, 3)
end

function Quest70518:OnSubStart7051802(arg1)
    print("OnSubStart7051802")
    self:CreateQuestNpc(arg1, npcs.Npc30235Data.id, 1)
end

function Quest70518:OnSubFinish7051802(arg1)
    print("OnSubFinish7051802")
end

function Quest70518:OnSubStart7051805(arg1)
    print("OnSubStart7051805")
end

function Quest70518:OnSubFinish7051805(arg1)
    print("OnSubFinish7051805")
    self:SafeDestroyQuestNpc(npcs.Npc30235Data.alias, 3)
end

function Quest70518:OnSubStart7051803(arg1)
    print("OnSubStart7051803")
    self:CreateQuestNpcWithTriggerBlack("Q7051803NPCTrigger", 7051803, 1008, 1, 15, 1)
end

function Quest70518:OnSubFinish7051803(arg1)
    print("OnSubFinish7051803")
    self:SafeDestroyQuestNpc(npcs.BarbaraData.alias, 3)
end

return Quest70518
