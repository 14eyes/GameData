require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76159 = class("Quest76159", QuestActorProxy)
Quest76159.defaultAlias = "Quest76159"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest76159:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest76159:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7615901"] = self.OnSubStart7615901,
        ["7615902"] = self.OnSubStart7615902,
        ["7615908"] = self.OnSubStart7615908,
        ["7615903"] = self.OnSubStart7615903,
        ["7615905"] = self.OnSubStart7615905,
        ["7615906"] = self.OnSubStart7615906,
        ["7615907"] = self.OnSubStart7615907,
        ["7615904"] = self.OnSubStart7615904
    }
end

function Quest76159:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7615901"] = self.OnSubFinish7615901,
        ["7615902"] = self.OnSubFinish7615902,
        ["7615908"] = self.OnSubFinish7615908,
        ["7615903"] = self.OnSubFinish7615903,
        ["7615905"] = self.OnSubFinish7615905,
        ["7615906"] = self.OnSubFinish7615906,
        ["7615907"] = self.OnSubFinish7615907,
        ["7615904"] = self.OnSubFinish7615904
    }
end

function Quest76159:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7615906"] = self.OnSubFailed7615906, ["7615907"] = self.OnSubFailed7615907}
end

function Quest76159:Start()
    print("Start")
end

function Quest76159:OnDestroy()
    print("OnDestroy")
end

function Quest76159:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76159:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76159:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76159:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76159:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest76159:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76159:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if not arg6 then
        if not needLightUp then
            goto lbl_8
        end
    end

    n = 0
    ::lbl_8::
    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest76159:OnSubStart7615901(arg1)
    print("OnSubStart7615901")
    this:NpcCreateWithNpcTrigger(npcs.Npc1322.id, 0, 15, 7615901)
    this:CreateQuestNpc(arg1, npcs.Npc16657.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1322.alias, 76159):SitOnChair(8010, true)
end

function Quest76159:OnSubFinish7615901(arg1)
    print("OnSubFinish7615901")
    this:NpcDestroyImmediately(3, npcs.Npc1322.alias)
    this:NpcDestroyImmediately(3, npcs.Npc16657.alias)
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogIdsData_black, 0, nil, nil, nil)
end

function Quest76159:OnSubStart7615902(arg1)
    print("OnSubStart7615902")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(2, npcs.Npc1322.id, 0, 7615902, 15, true)
end

function Quest76159:OnSubFinish7615902(arg1)
    print("OnSubFinish7615902")
    this:NpcDestroyImmediately(3, npcs.Npc1322.alias)
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogIdsData_black, 0, nil, nil, nil)
end

function Quest76159:OnSubStart7615908(arg1)
    print("OnSubStart7615908")
end

function Quest76159:OnSubFinish7615908(arg1)
    print("OnSubFinish7615908")
end

function Quest76159:OnSubStart7615903(arg1)
    print("OnSubStart7615903")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1322.id, 0, 7615903, 15, true)
end

function Quest76159:OnSubFinish7615903(arg1)
    print("OnSubFinish7615903")
    this:NpcDestroyImmediately(3, npcs.Npc1322.alias)
    this:PlayerEnterDungeonPointWithDialogs(1998, 1323, 7615903, 1, datas.DialogIdsData_black, 2, nil, nil)
end

function Quest76159:OnSubStart7615905(arg1)
    print("OnSubStart7615905")
    this:CreateQuestNpc(arg1, npcs.Npc16736.id, 0, false, 0)
end

function Quest76159:OnSubFinish7615905(arg1)
    print("OnSubFinish7615905")
    this:NpcDestroyImmediately(3, npcs.Npc16736.alias)
end

function Quest76159:OnSubStart7615906(arg1)
    print("OnSubStart7615906")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1322.id, 0, 7615906, 30, true)
end

function Quest76159:OnSubFinish7615906(arg1)
    print("OnSubFinish7615906")
    this:NpcDestroyImmediately(20354, npcs.Npc1322.alias)
end

function Quest76159:OnSubFailed7615906(arg1)
    print("OnSubFailed7615906")
    this:RecycleAllRes()
end

function Quest76159:OnSubStart7615907(arg1)
    print("OnSubStart7615907")
    this:CreateQuestNpc(arg1, npcs.Npc1322.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16956.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1322.alias, 76159):SitOnChair(0, false)
    this:DeployStoryByQuest(147619500)
end

function Quest76159:OnSubFinish7615907(arg1)
    print("OnSubFinish7615907")
    actorUtils.ShowContext("HexenzirkelTopicCompleteDialog", 10000131)
    this:DeployStoryByQuest(147615901)
    this:CancelStoryByQuest(147619500)
end

function Quest76159:OnSubFailed7615907(arg1)
    print("OnSubFailed7615907")
    this:RecycleAllRes()
end

function Quest76159:OnSubStart7615904(arg1)
    print("OnSubStart7615904")
end

function Quest76159:OnSubFinish7615904(arg1)
    print("OnSubFinish7615904")
    this:NpcDestroyImmediately(20354, npcs.Npc16956.alias)
    this:CancelStoryByQuest(147619500)
end

return Quest76159
