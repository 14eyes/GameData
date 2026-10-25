require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70120 = class("Quest70120", QuestActorProxy)
Quest70120.defaultAlias = "Quest70120"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest70120:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest70120:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7012001"] = self.OnSubStart7012001,
        ["7012014"] = self.OnSubStart7012014,
        ["7012015"] = self.OnSubStart7012015,
        ["7012002"] = self.OnSubStart7012002,
        ["7012006"] = self.OnSubStart7012006,
        ["7012011"] = self.OnSubStart7012011,
        ["7012003"] = self.OnSubStart7012003,
        ["7012007"] = self.OnSubStart7012007,
        ["7012012"] = self.OnSubStart7012012,
        ["7012005"] = self.OnSubStart7012005,
        ["7012010"] = self.OnSubStart7012010,
        ["7012013"] = self.OnSubStart7012013,
        ["7012004"] = self.OnSubStart7012004,
        ["7012008"] = self.OnSubStart7012008,
        ["7012009"] = self.OnSubStart7012009
    }
end

function Quest70120:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7012001"] = self.OnSubFinish7012001,
        ["7012014"] = self.OnSubFinish7012014,
        ["7012015"] = self.OnSubFinish7012015,
        ["7012002"] = self.OnSubFinish7012002,
        ["7012006"] = self.OnSubFinish7012006,
        ["7012011"] = self.OnSubFinish7012011,
        ["7012003"] = self.OnSubFinish7012003,
        ["7012007"] = self.OnSubFinish7012007,
        ["7012012"] = self.OnSubFinish7012012,
        ["7012005"] = self.OnSubFinish7012005,
        ["7012010"] = self.OnSubFinish7012010,
        ["7012013"] = self.OnSubFinish7012013,
        ["7012004"] = self.OnSubFinish7012004,
        ["7012008"] = self.OnSubFinish7012008,
        ["7012009"] = self.OnSubFinish7012009
    }
end

function Quest70120:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7012001"] = self.OnSubFailed7012001}
end

function Quest70120:Start()
    print("Start")
end

function Quest70120:OnDestroy()
    print("OnDestroy")
end

function Quest70120:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70120:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70120:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70120:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7012008Trigger", 70120)
end

function Quest70120:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 101 then
        actorUtils.FinishQuestWithParam({false}, {7012001})
    elseif arg1 == 102 then
        actorUtils.FinishQuestWithParam({true}, {7012001})
    elseif arg1 == 201 then
        actorUtils.FinishQuestWithParam({false}, {7012014})
    end
end

function Quest70120:ActorDestroy(arg1, arg2)
    if arg2 == nil or arg2 == 0 then
        local actor = actorMgr:GetActor(arg1)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    else
        local str = arg1 .. tostring(arg2)
        local actor = actorMgr:GetActor(str)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    end
end

function Quest70120:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest70120:OnSubStart7012001(arg1)
    print("OnSubStart7012001")
    this:CreateQuestNpc(arg1, npcs.Npc17217.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc17217.alias, 70120):DoFreeStyle(1250, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc17218.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc17219.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc17220.id, 0, false, 0)
end

function Quest70120:OnSubFinish7012001(arg1)
    print("OnSubFinish7012001")
end

function Quest70120:OnSubFailed7012001(arg1)
    print("OnSubFailed7012001")
    this:RecycleAllRes()
end

function Quest70120:OnSubStart7012014(arg1)
    print("OnSubStart7012014")
    this:CreateQuestNpc(arg1, npcs.Npc17217.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc17217.alias, 70120):DoFreeStyle(1250, true, nil, true, true, false, true)
end

function Quest70120:OnSubFinish7012014(arg1)
    print("OnSubFinish7012014")
end

function Quest70120:OnSubStart7012015(arg1)
    print("OnSubStart7012015")
    this:GetQuestNpcActor(npcs.Npc17217.alias, 70120):DoFreeStyle(1250, true, nil, true, true, false, true)
    actorUtils.FinishQuestWithParam({false}, {7012015})
end

function Quest70120:OnSubFinish7012015(arg1)
    print("OnSubFinish7012015")
end

function Quest70120:OnSubStart7012002(arg1)
    print("OnSubStart7012002")
    this:CreateQuestNpc(arg1, npcs.Npc17218.id, 0, false, 0)
end

function Quest70120:OnSubFinish7012002(arg1)
    print("OnSubFinish7012002")
end

function Quest70120:OnSubStart7012006(arg1)
    print("OnSubStart7012006")
    this:CreateQuestNpc(arg1, npcs.Npc17218.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc17218.alias, 70120):DoFreeStyle(4100, true, nil, true, true, false, true)
    this:RequestInteraction(npcs.Npc17218.alias, "", true)
end

function Quest70120:OnSubFinish7012006(arg1)
    print("OnSubFinish7012006")
    this:NpcDestroyImmediately(3, npcs.Npc17218.alias)
end

function Quest70120:OnSubStart7012011(arg1)
    print("OnSubStart7012011")
    this:CreateQuestNpc(arg1, npcs.Npc17218.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc17218.alias, 70120):DoFreeStyle(4100, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc17217.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc17217.alias, 70120):DoFreeStyle(1250, true, nil, true, true, false, true)
    actorUtils.FinishQuestWithParam({false}, {7012011})
end

function Quest70120:OnSubFinish7012011(arg1)
    print("OnSubFinish7012011")
end

function Quest70120:OnSubStart7012003(arg1)
    print("OnSubStart7012003")
    this:CreateQuestNpc(arg1, npcs.Npc17220.id, 0, false, 0)
end

function Quest70120:OnSubFinish7012003(arg1)
    print("OnSubFinish7012003")
end

function Quest70120:OnSubStart7012007(arg1)
    print("OnSubStart7012007")
    this:CreateQuestNpc(arg1, npcs.Npc17220.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc17220.alias, 70120):DoFreeStyle(4120, true, nil, true, true, false, true)
    this:RequestInteraction(npcs.Npc17220.alias, "", true)
end

function Quest70120:OnSubFinish7012007(arg1)
    print("OnSubFinish7012007")
    this:NpcDestroyImmediately(3, npcs.Npc17220.alias)
end

function Quest70120:OnSubStart7012012(arg1)
    print("OnSubStart7012012")
    this:CreateQuestNpc(arg1, npcs.Npc17220.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc17220.alias, 70120):DoFreeStyle(4110, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc17217.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc17217.alias, 70120):DoFreeStyle(1250, true, nil, true, true, false, true)
    actorUtils.FinishQuestWithParam({false}, {7012012})
end

function Quest70120:OnSubFinish7012012(arg1)
    print("OnSubFinish7012012")
end

function Quest70120:OnSubStart7012005(arg1)
    print("OnSubStart7012005")
    this:CreateQuestNpc(arg1, npcs.Npc17219.id, 0, false, 0)
end

function Quest70120:OnSubFinish7012005(arg1)
    print("OnSubFinish7012005")
end

function Quest70120:OnSubStart7012010(arg1)
    print("OnSubStart7012010")
    this:CreateQuestNpc(arg1, npcs.Npc17219.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc17219.alias, 70120):DoFreeStyle(4121, true, nil, true, true, false, true)
    this:RequestInteraction(npcs.Npc17219.alias, "", true)
end

function Quest70120:OnSubFinish7012010(arg1)
    print("OnSubFinish7012010")
    this:NpcDestroyImmediately(3, npcs.Npc17219.alias)
end

function Quest70120:OnSubStart7012013(arg1)
    print("OnSubStart7012013")
    this:CreateQuestNpc(arg1, npcs.Npc17219.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc17219.alias, 70120):DoFreeStyle(4110, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc17217.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc17217.alias, 70120):DoFreeStyle(1250, true, nil, true, true, false, true)
    actorUtils.FinishQuestWithParam({false}, {7012013})
end

function Quest70120:OnSubFinish7012013(arg1)
    print("OnSubFinish7012013")
end

function Quest70120:OnSubStart7012004(arg1)
    print("OnSubStart7012004")
    this:GetQuestNpcActor(npcs.Npc17217.alias, 70120):DoFreeStyle(1250, true, nil, true, true, false, true)
end

function Quest70120:OnSubFinish7012004(arg1)
    print("OnSubFinish7012004")
end

function Quest70120:OnSubStart7012008(arg1)
    print("OnSubStart7012008")
    this:CreateQuestNpc(arg1, npcs.Npc17217.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7012008Trigger", "Actor/Gadget/Q7012008Trigger", 70900002, 0, points._Q7012008TriggerPoint_.pos, points._Q7012008TriggerPoint_.rot, true, false, 3, nil, 0, 70120)
end

function Quest70120:OnSubFinish7012008(arg1)
    print("OnSubFinish7012008")
end

function Quest70120:OnSubStart7012009(arg1)
    print("OnSubStart7012009")
    this:CreateQuestNpc(arg1, npcs.Npc17217.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc17217.alias, 70120):DoFreeStyle(4100, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc17218.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc17218.alias, 70120):DoFreeStyle(4100, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc17219.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc17219.alias, 70120):DoFreeStyle(4110, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc17220.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc17220.alias, 70120):DoFreeStyle(4111, true, nil, true, true, false, true)
end

function Quest70120:OnSubFinish7012009(arg1)
    print("OnSubFinish7012009")
end

return Quest70120
