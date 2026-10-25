require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74020 = class("Quest74020", QuestActorProxy)
Quest74020.defaultAlias = "Quest74020"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest74020:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest74020:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7402001"] = self.OnSubStart7402001,
        ["7402003"] = self.OnSubStart7402003,
        ["7402002"] = self.OnSubStart7402002,
        ["7402004"] = self.OnSubStart7402004,
        ["7402006"] = self.OnSubStart7402006,
        ["7402005"] = self.OnSubStart7402005,
        ["7402007"] = self.OnSubStart7402007
    }
end

function Quest74020:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7402001"] = self.OnSubFinish7402001,
        ["7402003"] = self.OnSubFinish7402003,
        ["7402002"] = self.OnSubFinish7402002,
        ["7402004"] = self.OnSubFinish7402004,
        ["7402006"] = self.OnSubFinish7402006,
        ["7402005"] = self.OnSubFinish7402005,
        ["7402007"] = self.OnSubFinish7402007
    }
end

function Quest74020:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74020:Start()
    print("Start")
end

function Quest74020:OnDestroy()
    print("OnDestroy")
end

function Quest74020:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74020:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74020:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74020:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest74020:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 7402007 then
        quest = actorMgr:GetActor(clientData.ActorAlias)
        if quest ~= nil then
            quest:FinishQuestID(false, 7402007)
        end
    end
end

function Quest74020:OnSubStart7402001(arg1)
    print("OnSubStart7402001")
end

function Quest74020:OnSubFinish7402001(arg1)
    print("OnSubFinish7402001")
    this:RequestInteraction(npcs.Npc21035Data.alias)
end

function Quest74020:OnSubStart7402003(arg1)
    print("OnSubStart7402003")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21035Data.id, 7402003, 0, 10, 1)
end

function Quest74020:OnSubFinish7402003(arg1)
    print("OnSubFinish7402003")
end

function Quest74020:OnSubStart7402002(arg1)
    print("OnSubStart7402002")
    this:CreateQuestNpc(arg1, npcs.Npc21035Data.id, 0)
end

function Quest74020:OnSubFinish7402002(arg1)
    print("OnSubFinish7402002")
end

function Quest74020:OnSubStart7402004(arg1)
    print("OnSubStart7402004")
    this:CreateQuestNpc(arg1, npcs.Npc21035Data.id, 0)
end

function Quest74020:OnSubFinish7402004(arg1)
    print("OnSubFinish7402004")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1_2)
        this:TransmitPlayerById(arg1, 2)
        this:RequestInteraction(npcs.Npc21035Data.alias)
    end, nil, nil, 0, false, true)
end

function Quest74020:OnSubStart7402006(arg1)
    print("OnSubStart7402006")
end

function Quest74020:OnSubFinish7402006(arg1)
    print("OnSubFinish7402006")
end

function Quest74020:OnSubStart7402005(arg1)
    print("OnSubStart7402005")
    this:CreateQuestNpc(arg1, npcs.Npc21035Data.id, 0)
end

function Quest74020:OnSubFinish7402005(arg1)
    print("OnSubFinish7402005")
    this:SafeDestroyQuestNpc(npcs.Npc21035Data.alias, 3)
end

function Quest74020:OnSubStart7402007(arg1)
    print("OnSubStart7402007")
end

function Quest74020:OnSubFinish7402007(arg1)
    print("OnSubFinish7402007")
end

return Quest74020
