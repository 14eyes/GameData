require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74021 = class("Quest74021", QuestActorProxy)
Quest74021.defaultAlias = "Quest74021"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest74021:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest74021:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7402101"] = self.OnSubStart7402101,
        ["7402103"] = self.OnSubStart7402103,
        ["7402102"] = self.OnSubStart7402102,
        ["7402104"] = self.OnSubStart7402104,
        ["7402106"] = self.OnSubStart7402106,
        ["7402105"] = self.OnSubStart7402105,
        ["7402107"] = self.OnSubStart7402107
    }
end

function Quest74021:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7402101"] = self.OnSubFinish7402101,
        ["7402103"] = self.OnSubFinish7402103,
        ["7402102"] = self.OnSubFinish7402102,
        ["7402104"] = self.OnSubFinish7402104,
        ["7402106"] = self.OnSubFinish7402106,
        ["7402105"] = self.OnSubFinish7402105,
        ["7402107"] = self.OnSubFinish7402107
    }
end

function Quest74021:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74021:Start()
    print("Start")
end

function Quest74021:OnDestroy()
    print("OnDestroy")
end

function Quest74021:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74021:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74021:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74021:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest74021:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 7402107 then
        quest = actorMgr:GetActor(clientData.ActorAlias)
        if quest ~= nil then
            quest:FinishQuestID(false, 7402107)
        end
    end
end

function Quest74021:OnSubStart7402101(arg1)
    print("OnSubStart7402101")
end

function Quest74021:OnSubFinish7402101(arg1)
    print("OnSubFinish7402101")
    this:RequestInteraction(npcs.Npc21035Data.alias)
end

function Quest74021:OnSubStart7402103(arg1)
    print("OnSubStart7402103")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21035Data.id, 7402103, 0, 10, 1)
end

function Quest74021:OnSubFinish7402103(arg1)
    print("OnSubFinish7402103")
end

function Quest74021:OnSubStart7402102(arg1)
    print("OnSubStart7402102")
    this:CreateQuestNpc(arg1, npcs.Npc21035Data.id, 0)
end

function Quest74021:OnSubFinish7402102(arg1)
    print("OnSubFinish7402102")
end

function Quest74021:OnSubStart7402104(arg1)
    print("OnSubStart7402104")
    this:CreateQuestNpc(arg1, npcs.Npc21035Data.id, 0)
end

function Quest74021:OnSubFinish7402104(arg1)
    print("OnSubFinish7402104")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1_2)
        this:TransmitPlayerById(arg1, 2)
        this:RequestInteraction(npcs.Npc21035Data.alias)
    end, nil, nil, 0, false, true)
end

function Quest74021:OnSubStart7402106(arg1)
    print("OnSubStart7402106")
end

function Quest74021:OnSubFinish7402106(arg1)
    print("OnSubFinish7402106")
end

function Quest74021:OnSubStart7402105(arg1)
    print("OnSubStart7402105")
    this:CreateQuestNpc(arg1, npcs.Npc21035Data.id, 0)
end

function Quest74021:OnSubFinish7402105(arg1)
    print("OnSubFinish7402105")
    this:SafeDestroyQuestNpc(npcs.Npc21035Data.alias, 3)
end

function Quest74021:OnSubStart7402107(arg1)
    print("OnSubStart7402107")
end

function Quest74021:OnSubFinish7402107(arg1)
    print("OnSubFinish7402107")
end

return Quest74021
