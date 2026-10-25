require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74138 = class("Quest74138", QuestActorProxy)
Quest74138.defaultAlias = "Quest74138"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest74138:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest74138:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7413801"] = self.OnSubStart7413801}
end

function Quest74138:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7413801"] = self.OnSubFinish7413801}
end

function Quest74138:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74138:Start()
    print("Start")
end

function Quest74138:OnDestroy()
    print("OnDestroy")
end

function Quest74138:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74138:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74138:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc30420Data.alias, 3)
    this:RemoveLocalGadget(70711227, "7413801")
end

function Quest74138:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest74138:OnSubStart7413801(arg1)
    print("OnSubStart7413801")
    this:NpcCreateWithNpcTrigger(npcs.Npc30420Data.id, 7413801, 0, 8)
    if this:GetQuestVar(7413801, 1) == 0 then
        this:NarratorOnlyTaskByData(datas.Narrator_7413801, function(arg1)
            this:SetQuestVar(7413801, 1, 1)
        end)
    end

    this:CreateLocalGadget(70711227, "7413801", {x = 1729.406, y = 441.427, z = 4934.737}, {x = 0.0, y = 76.383, z = 0.0}, 3, nil, nil, false)
end

function Quest74138:OnSubFinish7413801(arg1)
    print("OnSubFinish7413801")
    this:RemoveLocalGadget(70711227, "7413801")
    this:SafeDestroyQuestNpc(npcs.Npc30420Data.alias, 3)
    this:ClearNarratorTask()
end

return Quest74138
