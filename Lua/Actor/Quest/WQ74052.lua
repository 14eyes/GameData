require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74052 = class("Quest74052", QuestActorProxy)
Quest74052.defaultAlias = "Quest74052"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74052:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74052:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7405201"] = self.OnSubStart7405201,
        ["7405202"] = self.OnSubStart7405202,
        ["7405203"] = self.OnSubStart7405203,
        ["7405204"] = self.OnSubStart7405204,
        ["7405205"] = self.OnSubStart7405205,
        ["7405206"] = self.OnSubStart7405206
    }
end

function Quest74052:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7405201"] = self.OnSubFinish7405201,
        ["7405202"] = self.OnSubFinish7405202,
        ["7405203"] = self.OnSubFinish7405203,
        ["7405204"] = self.OnSubFinish7405204,
        ["7405205"] = self.OnSubFinish7405205,
        ["7405206"] = self.OnSubFinish7405206
    }
end

function Quest74052:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74052:Start()
    print("Start")
end

function Quest74052:OnDestroy()
    print("OnDestroy")
end

function Quest74052:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74052:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74052:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc21305Data.alias, 20191)
    this:SafeDestroyQuestNpc(npcs.Npc21305Data.alias, 20192)
    this:SafeDestroyQuestNpc(npcs.Npc21305Data.alias, 20193)
    this:SafeDestroyQuestNpc(npcs.Npc21096Data.alias, 20191)
    this:SafeDestroyQuestNpc(npcs.Npc21096Data.alias, 20192)
    this:SafeDestroyQuestNpc(npcs.Npc21096Data.alias, 20193)
    this:SafeDestroyQuestNpc(npcs.Npc21306Data.alias, 20191)
    this:SafeDestroyQuestNpc(npcs.Npc21306Data.alias, 20192)
    this:SafeDestroyQuestNpc(npcs.Npc21306Data.alias, 20193)
    this:SafeDestroyQuestNpc(npcs.Npc21306Data.alias, 20194)
    this:SafeDestroyQuestNpc(npcs.Npc5221Data.alias, 20191)
    this:SafeDestroyQuestNpc(npcs.Npc5221Data.alias, 20192)
    this:SafeDestroyQuestNpc(npcs.Npc5221Data.alias, 20193)
    this:SafeDestroyQuestNpc(npcs.Npc5221Data.alias, 20194)
    this:SafeDestroyQuestNpc(npcs.Npc5222Data.alias, 20191)
    this:SafeDestroyQuestNpc(npcs.Npc5222Data.alias, 20192)
    this:SafeDestroyQuestNpc(npcs.Npc5222Data.alias, 20193)
    this:SafeDestroyQuestNpc(npcs.Npc5222Data.alias, 20194)
    this:SafeDestroyQuestNpc(npcs.Npc5204Data.alias, 20191)
    this:SafeDestroyQuestNpc(npcs.Npc5204Data.alias, 20192)
    this:SafeDestroyQuestNpc(npcs.Npc5204Data.alias, 20193)
    this:SafeDestroyQuestNpc(npcs.Npc5204Data.alias, 20194)
    this:SafeDestroyQuestNpc(npcs.Npc5218Data.alias, 20191)
    this:SafeDestroyQuestNpc(npcs.Npc5218Data.alias, 20192)
    this:SafeDestroyQuestNpc(npcs.Npc5218Data.alias, 20193)
    this:SafeDestroyQuestNpc(npcs.Npc5218Data.alias, 20194)
end

function Quest74052:OnSubStart7405201(arg1)
    print("OnSubStart7405201")
    this:CreateQuestNpc(arg1, npcs.Npc21305Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21305Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21096Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21096Data.alias):DoFreeStyle(4010, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21306Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21306Data.alias):DoFreeStyle(4010, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc5221Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5221Data.alias):DoFreeStyle(4010, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc5222Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5222Data.alias):DoFreeStyle(4010, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc5204Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5204Data.alias):DoFreeStyle(1270, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc5218Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5218Data.alias):DoFreeStyle(4010, true, nil, true, true, false, false)
end

function Quest74052:OnSubFinish7405201(arg1)
    print("OnSubFinish7405201")
end

function Quest74052:OnSubStart7405202(arg1)
    print("OnSubStart7405202")
    this:GetQuestNpcActor(npcs.Npc21305Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21096Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21096Data.alias):DoFreeStyle(1270, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21306Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21306Data.alias):DoFreeStyle(1270, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc5221Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5221Data.alias):DoFreeStyle(1270, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc5222Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5222Data.alias):DoFreeStyle(1270, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc5204Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5204Data.alias):DoFreeStyle(4010, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc5218Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5218Data.alias):DoFreeStyle(1270, true, nil, true, true, false, false)
end

function Quest74052:OnSubFinish7405202(arg1)
    print("OnSubFinish7405202")
end

function Quest74052:OnSubStart7405203(arg1)
    print("OnSubStart7405203")
    this:GetQuestNpcActor(npcs.Npc21305Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21096Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21096Data.alias):DoFreeStyle(1270, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21306Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21306Data.alias):DoFreeStyle(1270, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc5221Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5221Data.alias):DoFreeStyle(1270, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc5222Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5222Data.alias):DoFreeStyle(1270, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc5204Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5204Data.alias):DoFreeStyle(1270, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc5218Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5218Data.alias):DoFreeStyle(1270, true, nil, true, true, false, false)
end

function Quest74052:OnSubFinish7405203(arg1)
    print("OnSubFinish7405203")
end

function Quest74052:OnSubStart7405204(arg1)
    print("OnSubStart7405204")
    this:CreateQuestNpc(arg1, npcs.Npc21305Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21305Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21096Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21096Data.alias):DoFreeStyle(1270, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21306Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21306Data.alias):DoFreeStyle(1270, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc5221Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5221Data.alias):DoFreeStyle(1270, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc5222Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5222Data.alias):DoFreeStyle(4010, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc5204Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5204Data.alias):DoFreeStyle(1270, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc5218Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5218Data.alias):DoFreeStyle(4010, true, nil, true, true, false, false)
end

function Quest74052:OnSubFinish7405204(arg1)
    print("OnSubFinish7405204")
    this:SafeDestroyQuestNpc(npcs.Npc21096Data.alias, 20192)
    this:SafeDestroyQuestNpc(npcs.Npc21306Data.alias, 20192)
    this:SafeDestroyQuestNpc(npcs.Npc5221Data.alias, 20192)
    this:SafeDestroyQuestNpc(npcs.Npc5222Data.alias, 20192)
    this:SafeDestroyQuestNpc(npcs.Npc5204Data.alias, 20192)
    this:SafeDestroyQuestNpc(npcs.Npc5218Data.alias, 20192)
end

function Quest74052:OnSubStart7405205(arg1)
    print("OnSubStart7405205")
    this:CreateQuestNpc(arg1, npcs.Npc21305Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21305Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21096Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21096Data.alias):DoFreeStyle(4010, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21306Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21306Data.alias):DoFreeStyle(1270, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc5221Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5221Data.alias):DoFreeStyle(1270, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc5222Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5222Data.alias):DoFreeStyle(4010, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc5204Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5204Data.alias):DoFreeStyle(4010, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc5218Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5218Data.alias):DoFreeStyle(1270, true, nil, true, true, false, false)
end

function Quest74052:OnSubFinish7405205(arg1)
    print("OnSubFinish7405205")
    this:SafeDestroyQuestNpc(npcs.Npc21096Data.alias, 20193)
    this:SafeDestroyQuestNpc(npcs.Npc21306Data.alias, 20193)
    this:SafeDestroyQuestNpc(npcs.Npc5221Data.alias, 20193)
    this:SafeDestroyQuestNpc(npcs.Npc5222Data.alias, 20193)
    this:SafeDestroyQuestNpc(npcs.Npc5204Data.alias, 20193)
    this:SafeDestroyQuestNpc(npcs.Npc5218Data.alias, 20193)
end

function Quest74052:OnSubStart7405206(arg1)
    print("OnSubStart7405206")
    this:CreateQuestNpc(arg1, npcs.Npc21306Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21306Data.alias):DoFreeStyle(1270, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc5221Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5221Data.alias):DoFreeStyle(4010, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc5222Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5222Data.alias):DoFreeStyle(1270, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc5204Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5204Data.alias):DoFreeStyle(4010, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc5218Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5218Data.alias):DoFreeStyle(1270, true, nil, true, true, false, false)
end

function Quest74052:OnSubFinish7405206(arg1)
    print("OnSubFinish7405206")
    this:SafeDestroyQuestNpc(npcs.Npc21306Data.alias, 20194)
    this:SafeDestroyQuestNpc(npcs.Npc5221Data.alias, 20194)
    this:SafeDestroyQuestNpc(npcs.Npc5222Data.alias, 20194)
    this:SafeDestroyQuestNpc(npcs.Npc5204Data.alias, 20194)
    this:SafeDestroyQuestNpc(npcs.Npc5218Data.alias, 20194)
end

return Quest74052
