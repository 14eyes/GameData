require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest24011 = class("Quest24011", QuestActorProxy)
Quest24011.defaultAlias = "Quest24011"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest24011:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest24011:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2401101"] = self.OnSubStart2401101,
        ["2401102"] = self.OnSubStart2401102,
        ["2401103"] = self.OnSubStart2401103,
        ["2401104"] = self.OnSubStart2401104,
        ["2401105"] = self.OnSubStart2401105,
        ["2401106"] = self.OnSubStart2401106,
        ["2401108"] = self.OnSubStart2401108,
        ["2401109"] = self.OnSubStart2401109,
        ["2401110"] = self.OnSubStart2401110
    }
end

function Quest24011:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2401101"] = self.OnSubFinish2401101,
        ["2401102"] = self.OnSubFinish2401102,
        ["2401103"] = self.OnSubFinish2401103,
        ["2401104"] = self.OnSubFinish2401104,
        ["2401105"] = self.OnSubFinish2401105,
        ["2401106"] = self.OnSubFinish2401106,
        ["2401108"] = self.OnSubFinish2401108,
        ["2401109"] = self.OnSubFinish2401109,
        ["2401110"] = self.OnSubFinish2401110
    }
end

function Quest24011:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest24011:Start()
    print("Start")
end

function Quest24011:OnDestroy()
    print("OnDestroy")
end

function Quest24011:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest24011:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest24011:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc5084Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13529Data.alias, 3)
    this:RemoveLocalGadget(70711049, "")
end

function Quest24011:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest24011:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4)
end

function Quest24011:IsActorExist()
    print("IsActorExist")
    return self:GetQuestNpcActor(npcs.Npc13529Data.alias) ~= actorMgr.dummyActor
end

function Quest24011:CreateDogNpc()
    print("CreateDogNpc")
    if this:GetQuestGlobalVar(2401101) == 1 then
        if this:IsActorExist() == false then
            this:CreateQuestNpcById(2401101, npcs.Npc13529Data.id, 2)
        end
    end
end

function Quest24011:FuncFreestyle()
    print("FuncFreestyle")
    this:GetQuestNpcActor(npcs.Npc5084Data.alias):DoFreeStyle(8063, true, nil, true, true, false, false)
end

function Quest24011:OnSubStart2401101(arg1)
    print("OnSubStart2401101")
    this:CreateQuestNpc(arg1, npcs.Npc5084Data.id, 1)
    this:CreateDogNpc()
    this:GetQuestNpcActor(npcs.Npc5084Data.alias):DoFreeStyle(1160, true, nil, true, true, false, false)
    this:CreateLocalGadget(70711049, "", {x = 3647.605, y = 507.126, z = 4726.934}, {x = 0.0, y = 113.165, z = 0.0}, 3, nil, nil, false)
end

function Quest24011:OnSubFinish2401101(arg1)
    print("OnSubFinish2401101")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Quest24011:OnSubStart2401102(arg1)
    print("OnSubStart2401102")
    this:CreateDogNpc()
    if this:IsPlayerSitOnChair(3, M.Pos(3647.495, 506.626, 4726.966), 2.5) then
        this:PlayerStandFromChair(0)
    end

    this:GetQuestNpcActor(npcs.Npc5084Data.alias):SitOnTargetChair(8010, {x = 3647.495, y = 506.626, z = 4726.966}, {x = 0.0, y = 168.725, z = 0.0}, 1, false)
    this:CreateLocalGadget(70711049, "", {x = 3647.605, y = 507.126, z = 4726.934}, {x = 0.0, y = 113.165, z = 0.0}, 3, nil, nil, false)
end

function Quest24011:OnSubFinish2401102(arg1)
    print("OnSubFinish2401102")
    this:NarratorOnlyTaskByData(datas.Narrator_2401102)
end

function Quest24011:OnSubStart2401103(arg1)
    print("OnSubStart2401103")
end

function Quest24011:OnSubFinish2401103(arg1)
    print("OnSubFinish2401103")
    this:NarratorOnlyTaskByData(datas.Narrator_2401103)
end

function Quest24011:OnSubStart2401104(arg1)
    print("OnSubStart2401104")
    this:CreateDogNpc()
    this:GetQuestNpcActor(npcs.Npc5084Data.alias):SitOnTargetChair(8010, {x = 3647.495, y = 506.626, z = 4726.966}, {x = 0.0, y = 168.725, z = 0.0}, 1, false)
    this:CreateLocalGadget(70711049, "", {x = 3647.605, y = 507.126, z = 4726.934}, {x = 0.0, y = 113.165, z = 0.0}, 3, nil, nil, false)
end

function Quest24011:OnSubFinish2401104(arg1)
    print("OnSubFinish2401104")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5084Data.alias)
    this:SafeDestroyQuestNpc(npcs.Npc13529Data.alias, 3)
    this:RemoveLocalGadget(70711049, "")
    this:ClearNarratorTask()
end

function Quest24011:OnSubStart2401105(arg1)
    print("OnSubStart2401105")
    this:CreateDogNpc()
    if this:IsPlayerSitOnChair(3, M.Pos(3647.495, 506.626, 4726.966), 2.5) then
        this:PlayerStandFromChair(0)
    end

    this:GetQuestNpcActor(npcs.Npc5084Data.alias):SitOnTargetChair(8010, {x = 3647.495, y = 506.626, z = 4726.966}, {x = 0.0, y = 168.725, z = 0.0}, 1, false)
    this:CreateLocalGadget(70711049, "", {x = 3647.605, y = 507.126, z = 4726.934}, {x = 0.0, y = 113.165, z = 0.0}, 3, nil, nil, false)
end

function Quest24011:OnSubFinish2401105(arg1)
    print("OnSubFinish2401105")
    this:NarratorOnlyTaskByData(datas.Narrator_2401102)
end

function Quest24011:OnSubStart2401106(arg1)
    print("OnSubStart2401106")
end

function Quest24011:OnSubFinish2401106(arg1)
    print("OnSubFinish2401106")
    this:NarratorOnlyTaskByData(datas.Narrator_2401103)
end

function Quest24011:OnSubStart2401108(arg1)
    print("OnSubStart2401108")
    this:CreateDogNpc()
    this:GetQuestNpcActor(npcs.Npc5084Data.alias):SitOnTargetChair(8010, {x = 3647.495, y = 506.626, z = 4726.966}, {x = 0.0, y = 168.725, z = 0.0}, 1, false)
    this:CreateLocalGadget(70711049, "", {x = 3647.605, y = 507.126, z = 4726.934}, {x = 0.0, y = 113.165, z = 0.0}, 3, nil, nil, false)
end

function Quest24011:OnSubFinish2401108(arg1)
    print("OnSubFinish2401108")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5084Data.alias)
    this:SafeDestroyQuestNpc(npcs.Npc13529Data.alias, 3)
    this:RemoveLocalGadget(70711049, "")
    this:ClearNarratorTask()
end

function Quest24011:OnSubStart2401109(arg1)
    print("OnSubStart2401109")
    this:CreateDogNpc()
    this:ActionSafeCall(function(arg1)
        if this:IsPlayerSitOnChair(3, M.Pos(3647.495, 506.626, 4726.966), 2.5) then
            this:PlayerStandFromChair(0)
        end

        this:GetQuestNpcActor(npcs.Npc5084Data.alias):SitOnTargetChair(8010, {x = 3647.495, y = 506.626, z = 4726.966}, {x = 0.0, y = 168.725, z = 0.0}, 1, false)
        this:CreateLocalGadget(70711049, "", {x = 3647.605, y = 507.126, z = 4726.934}, {x = 0.0, y = 113.165, z = 0.0}, 3, nil, nil, false)
    end)
end

function Quest24011:OnSubFinish2401109(arg1)
    print("OnSubFinish2401109")
    this:RemoveLocalGadget(70711049, "")
end

function Quest24011:OnSubStart2401110(arg1)
    print("OnSubStart2401110")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc5084Data.alias)
    questNpcActor:StandFromChairEx(0)
    this:NpcCreateWithNpcTrigger(npcs.Npc5084Data.id, 2401110, 1, 40)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateDogNpc()
end

function Quest24011:OnSubFinish2401110(arg1)
    print("OnSubFinish2401110")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5084Data.alias)
    this:SafeDestroyQuestNpc(npcs.Npc13529Data.alias, 3)
end

return Quest24011
