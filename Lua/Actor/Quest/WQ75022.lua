require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75022 = class("Quest75022", QuestActorProxy)
Quest75022.defaultAlias = "Quest75022"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75022:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75022:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7502201"] = self.OnSubStart7502201,
        ["7502206"] = self.OnSubStart7502206,
        ["7502202"] = self.OnSubStart7502202,
        ["7502203"] = self.OnSubStart7502203,
        ["7502204"] = self.OnSubStart7502204,
        ["7502205"] = self.OnSubStart7502205,
        ["7502208"] = self.OnSubStart7502208,
        ["7502207"] = self.OnSubStart7502207,
        ["7502209"] = self.OnSubStart7502209
    }
end

function Quest75022:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7502201"] = self.OnSubFinish7502201,
        ["7502206"] = self.OnSubFinish7502206,
        ["7502202"] = self.OnSubFinish7502202,
        ["7502203"] = self.OnSubFinish7502203,
        ["7502204"] = self.OnSubFinish7502204,
        ["7502205"] = self.OnSubFinish7502205,
        ["7502208"] = self.OnSubFinish7502208,
        ["7502207"] = self.OnSubFinish7502207,
        ["7502209"] = self.OnSubFinish7502209
    }
end

function Quest75022:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75022:Start()
    print("Start")
end

function Quest75022:OnDestroy()
    print("OnDestroy")
end

function Quest75022:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75022:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75022:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc21493.alias, 3)
    this:DestroyNpcTrigger("Q7502208N21493Trigger")
end

function Quest75022:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest75022:OnSubStart7502201(arg1)
    print("OnSubStart7502201")
    this:CreateQuestNpc(arg1, npcs.Npc21493.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21493.alias, 75022):DoFreeStyle(6, true, nil, true, true, false, false)
end

function Quest75022:OnSubFinish7502201(arg1)
    print("OnSubFinish7502201")
    this:SetNavigationByMainId(75022, true)
end

function Quest75022:OnSubStart7502206(arg1)
    print("OnSubStart7502206")
    this:GetQuestNpcActor(npcs.Npc21493.alias, 75022):DoFreeStyle(6, true, nil, true, true, false, false)
end

function Quest75022:OnSubFinish7502206(arg1)
    print("OnSubFinish7502206")
end

function Quest75022:OnSubStart7502202(arg1)
    print("OnSubStart7502202")
    this:CreateQuestNpc(arg1, npcs.Npc21493.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21493.alias, 75022):DoFreeStyle(6, true, nil, true, true, false, false)
end

function Quest75022:OnSubFinish7502202(arg1)
    print("OnSubFinish7502202")
end

function Quest75022:OnSubStart7502203(arg1)
    print("OnSubStart7502203")
end

function Quest75022:OnSubFinish7502203(arg1)
    print("OnSubFinish7502203")
end

function Quest75022:OnSubStart7502204(arg1)
    print("OnSubStart7502204")
    this:GetQuestNpcActor(npcs.Npc21493.alias, 75022):DoFreeStyle(1, true, nil, true, true, false, true)
end

function Quest75022:OnSubFinish7502204(arg1)
    print("OnSubFinish7502204")
end

function Quest75022:OnSubStart7502205(arg1)
    print("OnSubStart7502205")
    this:GetQuestNpcActor(npcs.Npc21493.alias, 75022):DoFreeStyle(1, true, nil, true, true, false, true)
end

function Quest75022:OnSubFinish7502205(arg1)
    print("OnSubFinish7502205")
end

function Quest75022:OnSubStart7502208(arg1)
    print("OnSubStart7502208")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0.5, npcs.Npc21493.id, 0, 7502208, 30, false)
    this:GetQuestNpcActor(npcs.Npc21493.alias, 75022):DoFreeStyle(1, true, nil, true, true, false, false)
end

function Quest75022:OnSubFinish7502208(arg1)
    print("OnSubFinish7502208")
    this:SafeDestroyQuestNpc(npcs.Npc21493.alias, 3)
end

function Quest75022:OnSubStart7502207(arg1)
    print("OnSubStart7502207")
end

function Quest75022:OnSubFinish7502207(arg1)
    print("OnSubFinish7502207")
end

function Quest75022:OnSubStart7502209(arg1)
    print("OnSubStart7502209")
end

function Quest75022:OnSubFinish7502209(arg1)
    print("OnSubFinish7502209")
end

return Quest75022
