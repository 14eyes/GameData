require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77191 = class("Quest77191", QuestActorProxy)
Quest77191.defaultAlias = "Quest77191"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest77191:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest77191:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7719101"] = self.OnSubStart7719101,
        ["7719120"] = self.OnSubStart7719120,
        ["7719108"] = self.OnSubStart7719108,
        ["7719111"] = self.OnSubStart7719111,
        ["7719110"] = self.OnSubStart7719110,
        ["7719112"] = self.OnSubStart7719112,
        ["7719103"] = self.OnSubStart7719103,
        ["7719104"] = self.OnSubStart7719104,
        ["7719105"] = self.OnSubStart7719105,
        ["7719113"] = self.OnSubStart7719113,
        ["7719114"] = self.OnSubStart7719114,
        ["7719107"] = self.OnSubStart7719107,
        ["7719115"] = self.OnSubStart7719115,
        ["7719116"] = self.OnSubStart7719116,
        ["7719117"] = self.OnSubStart7719117,
        ["7719118"] = self.OnSubStart7719118,
        ["7719119"] = self.OnSubStart7719119,
        ["7719109"] = self.OnSubStart7719109,
        ["7719102"] = self.OnSubStart7719102,
        ["7719106"] = self.OnSubStart7719106
    }
end

function Quest77191:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7719101"] = self.OnSubFinish7719101,
        ["7719120"] = self.OnSubFinish7719120,
        ["7719108"] = self.OnSubFinish7719108,
        ["7719111"] = self.OnSubFinish7719111,
        ["7719110"] = self.OnSubFinish7719110,
        ["7719112"] = self.OnSubFinish7719112,
        ["7719103"] = self.OnSubFinish7719103,
        ["7719104"] = self.OnSubFinish7719104,
        ["7719105"] = self.OnSubFinish7719105,
        ["7719113"] = self.OnSubFinish7719113,
        ["7719114"] = self.OnSubFinish7719114,
        ["7719107"] = self.OnSubFinish7719107,
        ["7719115"] = self.OnSubFinish7719115,
        ["7719116"] = self.OnSubFinish7719116,
        ["7719117"] = self.OnSubFinish7719117,
        ["7719118"] = self.OnSubFinish7719118,
        ["7719119"] = self.OnSubFinish7719119,
        ["7719109"] = self.OnSubFinish7719109,
        ["7719102"] = self.OnSubFinish7719102,
        ["7719106"] = self.OnSubFinish7719106
    }
end

function Quest77191:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7719108"] = self.OnSubFailed7719108, ["7719106"] = self.OnSubFailed7719106}
end

function Quest77191:Start()
    print("Start")
end

function Quest77191:OnDestroy()
    print("OnDestroy")
end

function Quest77191:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77191:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77191:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77191:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77191:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 101 then
        actorUtils.FinishQuestWithParam({false}, {7719113})
    elseif arg1 == 102 then
        actorUtils.FinishQuestWithParam({false}, {7719114})
    elseif arg1 == 201 then
        actorUtils.FinishQuestWithParam({false}, {7719107})
    elseif arg1 == 202 then
        actorUtils.FinishQuestWithParam({false}, {7719115})
    elseif arg1 == 301 then
        actorUtils.FinishQuestWithParam({false}, {7719116})
    elseif arg1 == 302 then
        actorUtils.FinishQuestWithParam({false}, {7719117})
    elseif arg1 == 401 then
        actorUtils.FinishQuestWithParam({false}, {7719118})
    elseif arg1 == 402 then
        actorUtils.FinishQuestWithParam({false}, {7719119})
    elseif arg1 == 1001 then
        actorUtils.FinishQuestWithParam({false}, {7719108})
    elseif arg1 == 2001 then
        actorUtils.FinishQuestWithParam({false}, {7719112})
    elseif arg1 == 3001 then
        actorUtils.FinishQuestWithParam({false}, {7719120})
    elseif arg1 == 4001 then
        actorUtils.FinishQuestWithParam({false}, {7719101})
    end
end

function Quest77191:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77191:OnSubStart7719101(arg1)
    print("OnSubStart7719101")
    this:CreateQuestNpc(arg1, npcs.Npc22633.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22633.alias, 77191):DoFreeStyle(1240, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc22634.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22634.alias, 77191):DoFreeStyle(1090, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc22634.alias, 77191):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc22635.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22636.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22636.alias, 77191):DoFreeStyle(8040, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc22636.alias, 77191):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc22637.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22637.alias, 77191):DoFreeStyle(4150, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc22637.alias, 77191):DisableInteeHeadCtrl(true)
end

function Quest77191:OnSubFinish7719101(arg1)
    print("OnSubFinish7719101")
    this:NpcDestroyImmediately(3, npcs.Npc22634.alias)
    this:NpcDestroyImmediately(3, npcs.Npc22635.alias)
    this:NpcDestroyImmediately(3, npcs.Npc22636.alias)
    this:NpcDestroyImmediately(3, npcs.Npc22637.alias)
end

function Quest77191:OnSubStart7719120(arg1)
    print("OnSubStart7719120")
    this:CreateQuestNpc(arg1, npcs.Npc22634.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22634.alias, 77191):DoFreeStyle(1090, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22635.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22636.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22636.alias, 77191):DoFreeStyle(8010, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22637.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22637.alias, 77191):DoFreeStyle(4150, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22633.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22633.alias, 77191):DoFreeStyle(4140, true, nil, true, true, false, false)
    actorUtils.FinishQuestWithParam({false}, {7719120})
end

function Quest77191:OnSubFinish7719120(arg1)
    print("OnSubFinish7719120")
end

function Quest77191:OnSubStart7719108(arg1)
    print("OnSubStart7719108")
    this:GetQuestNpcActor(npcs.Npc22636.alias, 77191):DoFreeStyle(8010, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc22637.alias, 77191):DoFreeStyle(4150, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc22634.alias, 77191):DoFreeStyle(1090, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22633.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22633.alias, 77191):DoFreeStyle(4140, true, nil, true, true, false, false)
end

function Quest77191:OnSubFinish7719108(arg1)
    print("OnSubFinish7719108")
    this:NpcDestroyImmediately(3, npcs.Npc22634.alias)
    this:NpcDestroyImmediately(3, npcs.Npc22635.alias)
    this:NpcDestroyImmediately(3, npcs.Npc22636.alias)
    this:NpcDestroyImmediately(3, npcs.Npc22637.alias)
end

function Quest77191:OnSubFailed7719108(arg1)
    print("OnSubFailed7719108")
    this:RecycleAllRes()
end

function Quest77191:OnSubStart7719111(arg1)
    print("OnSubStart7719111")
end

function Quest77191:OnSubFinish7719111(arg1)
    print("OnSubFinish7719111")
end

function Quest77191:OnSubStart7719110(arg1)
    print("OnSubStart7719110")
end

function Quest77191:OnSubFinish7719110(arg1)
    print("OnSubFinish7719110")
end

function Quest77191:OnSubStart7719112(arg1)
    print("OnSubStart7719112")
end

function Quest77191:OnSubFinish7719112(arg1)
    print("OnSubFinish7719112")
end

function Quest77191:OnSubStart7719103(arg1)
    print("OnSubStart7719103")
end

function Quest77191:OnSubFinish7719103(arg1)
    print("OnSubFinish7719103")
end

function Quest77191:OnSubStart7719104(arg1)
    print("OnSubStart7719104")
end

function Quest77191:OnSubFinish7719104(arg1)
    print("OnSubFinish7719104")
end

function Quest77191:OnSubStart7719105(arg1)
    print("OnSubStart7719105")
end

function Quest77191:OnSubFinish7719105(arg1)
    print("OnSubFinish7719105")
end

function Quest77191:OnSubStart7719113(arg1)
    print("OnSubStart7719113")
end

function Quest77191:OnSubFinish7719113(arg1)
    print("OnSubFinish7719113")
end

function Quest77191:OnSubStart7719114(arg1)
    print("OnSubStart7719114")
end

function Quest77191:OnSubFinish7719114(arg1)
    print("OnSubFinish7719114")
end

function Quest77191:OnSubStart7719107(arg1)
    print("OnSubStart7719107")
end

function Quest77191:OnSubFinish7719107(arg1)
    print("OnSubFinish7719107")
end

function Quest77191:OnSubStart7719115(arg1)
    print("OnSubStart7719115")
end

function Quest77191:OnSubFinish7719115(arg1)
    print("OnSubFinish7719115")
end

function Quest77191:OnSubStart7719116(arg1)
    print("OnSubStart7719116")
end

function Quest77191:OnSubFinish7719116(arg1)
    print("OnSubFinish7719116")
end

function Quest77191:OnSubStart7719117(arg1)
    print("OnSubStart7719117")
end

function Quest77191:OnSubFinish7719117(arg1)
    print("OnSubFinish7719117")
end

function Quest77191:OnSubStart7719118(arg1)
    print("OnSubStart7719118")
end

function Quest77191:OnSubFinish7719118(arg1)
    print("OnSubFinish7719118")
end

function Quest77191:OnSubStart7719119(arg1)
    print("OnSubStart7719119")
end

function Quest77191:OnSubFinish7719119(arg1)
    print("OnSubFinish7719119")
end

function Quest77191:OnSubStart7719109(arg1)
    print("OnSubStart7719109")
end

function Quest77191:OnSubFinish7719109(arg1)
    print("OnSubFinish7719109")
end

function Quest77191:OnSubStart7719102(arg1)
    print("OnSubStart7719102")
    actorUtils.FinishQuestWithParam({false}, {7719102})
end

function Quest77191:OnSubFinish7719102(arg1)
    print("OnSubFinish7719102")
end

function Quest77191:OnSubStart7719106(arg1)
    print("OnSubStart7719106")
    this:CreateQuestNpc(arg1, npcs.Npc22634.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22634.alias, 77191):DoFreeStyle(8010, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22636.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22636.alias, 77191):DoFreeStyle(8040, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22635.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22637.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22637.alias, 77191):DoFreeStyle(1122, true, nil, true, true, false, false)
end

function Quest77191:OnSubFinish7719106(arg1)
    print("OnSubFinish7719106")
end

function Quest77191:OnSubFailed7719106(arg1)
    print("OnSubFailed7719106")
    this:RecycleAllRes()
end

return Quest77191
