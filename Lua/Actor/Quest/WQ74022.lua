require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74022 = class("Quest74022", QuestActorProxy)
Quest74022.defaultAlias = "Quest74022"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest74022:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest74022:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7402201"] = self.OnSubStart7402201,
        ["7402203"] = self.OnSubStart7402203,
        ["7402202"] = self.OnSubStart7402202,
        ["7402204"] = self.OnSubStart7402204,
        ["7402206"] = self.OnSubStart7402206,
        ["7402205"] = self.OnSubStart7402205,
        ["7402207"] = self.OnSubStart7402207
    }
end

function Quest74022:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7402201"] = self.OnSubFinish7402201,
        ["7402203"] = self.OnSubFinish7402203,
        ["7402202"] = self.OnSubFinish7402202,
        ["7402204"] = self.OnSubFinish7402204,
        ["7402206"] = self.OnSubFinish7402206,
        ["7402205"] = self.OnSubFinish7402205,
        ["7402207"] = self.OnSubFinish7402207
    }
end

function Quest74022:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74022:Start()
    print("Start")
end

function Quest74022:OnDestroy()
    print("OnDestroy")
end

function Quest74022:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74022:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74022:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74022:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest74022:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 7402207 then
        quest = actorMgr:GetActor(clientData.ActorAlias)
        if quest ~= nil then
            quest:FinishQuestID(false, 7402207)
        end
    end
end

function Quest74022:OnSubStart7402201(arg1)
    print("OnSubStart7402201")
end

function Quest74022:OnSubFinish7402201(arg1)
    print("OnSubFinish7402201")
    this:RequestInteraction(npcs.Npc21035Data.alias)
end

function Quest74022:OnSubStart7402203(arg1)
    print("OnSubStart7402203")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21035Data.id, 7402203, 0, 10, 1)
end

function Quest74022:OnSubFinish7402203(arg1)
    print("OnSubFinish7402203")
end

function Quest74022:OnSubStart7402202(arg1)
    print("OnSubStart7402202")
    this:CreateQuestNpc(arg1, npcs.Npc21035Data.id, 0)
end

function Quest74022:OnSubFinish7402202(arg1)
    print("OnSubFinish7402202")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1_2)
        this:TransmitPlayerById(arg1, 3)
    end, nil, nil, 0, false, true)
end

function Quest74022:OnSubStart7402204(arg1)
    print("OnSubStart7402204")
    this:CreateQuestNpc(arg1, npcs.Npc21035Data.id, 0)
end

function Quest74022:OnSubFinish7402204(arg1)
    print("OnSubFinish7402204")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1_2)
        this:TransmitPlayerById(arg1, 2)
        this:RequestInteraction(npcs.Npc21035Data.alias)
    end, nil, nil, 0, false, true)
end

function Quest74022:OnSubStart7402206(arg1)
    print("OnSubStart7402206")
end

function Quest74022:OnSubFinish7402206(arg1)
    print("OnSubFinish7402206")
end

function Quest74022:OnSubStart7402205(arg1)
    print("OnSubStart7402205")
    this:CreateQuestNpc(arg1, npcs.Npc21035Data.id, 0)
end

function Quest74022:OnSubFinish7402205(arg1)
    print("OnSubFinish7402205")
    this:SafeDestroyQuestNpc(npcs.Npc21035Data.alias, 3)
end

function Quest74022:OnSubStart7402207(arg1)
    print("OnSubStart7402207")
end

function Quest74022:OnSubFinish7402207(arg1)
    print("OnSubFinish7402207")
end

return Quest74022
