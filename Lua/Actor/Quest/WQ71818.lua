require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71818 = class("Quest71818", QuestActorProxy)
Quest71818.defaultAlias = "Quest71818"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest71818:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest71818:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7181811"] = self.OnSubStart7181811,
        ["7181801"] = self.OnSubStart7181801,
        ["7181802"] = self.OnSubStart7181802,
        ["7181803"] = self.OnSubStart7181803,
        ["7181804"] = self.OnSubStart7181804,
        ["7181805"] = self.OnSubStart7181805,
        ["7181806"] = self.OnSubStart7181806,
        ["7181807"] = self.OnSubStart7181807,
        ["7181808"] = self.OnSubStart7181808,
        ["7181809"] = self.OnSubStart7181809,
        ["7181810"] = self.OnSubStart7181810
    }
end

function Quest71818:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7181811"] = self.OnSubFinish7181811,
        ["7181801"] = self.OnSubFinish7181801,
        ["7181802"] = self.OnSubFinish7181802,
        ["7181803"] = self.OnSubFinish7181803,
        ["7181804"] = self.OnSubFinish7181804,
        ["7181805"] = self.OnSubFinish7181805,
        ["7181806"] = self.OnSubFinish7181806,
        ["7181807"] = self.OnSubFinish7181807,
        ["7181808"] = self.OnSubFinish7181808,
        ["7181809"] = self.OnSubFinish7181809,
        ["7181810"] = self.OnSubFinish7181810
    }
end

function Quest71818:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7181811"] = self.OnSubFailed7181811,
        ["7181801"] = self.OnSubFailed7181801,
        ["7181802"] = self.OnSubFailed7181802,
        ["7181803"] = self.OnSubFailed7181803,
        ["7181804"] = self.OnSubFailed7181804,
        ["7181805"] = self.OnSubFailed7181805,
        ["7181806"] = self.OnSubFailed7181806,
        ["7181807"] = self.OnSubFailed7181807,
        ["7181808"] = self.OnSubFailed7181808,
        ["7181809"] = self.OnSubFailed7181809,
        ["7181810"] = self.OnSubFailed7181810
    }
end

function Quest71818:Start()
    print("Start")
end

function Quest71818:OnDestroy()
    print("OnDestroy")
end

function Quest71818:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71818:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71818:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:NotifyTo("Npc2138", 0, true)
    self:NotifyTo("Npc2137", 0, true)
    self:SafeDestroyQuestNpc(npcs.Npc213801Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc213701Data.alias, 3)
    self:UnSpawn(gadgets.Gadget70710273Data.alias)
end

function Quest71818:destroyxiaobai()
    print("destroyxiaobai")
    self:DestroyQuestNpcActorByAlias(npcs.Npc213801Data.alias, false)
end

function Quest71818:interaction()
    print("interaction")
    self:RequestInteraction(npcs.Npc213801Data.alias)
end

function Quest71818:createxiaobai()
    print("createxiaobai")
    self:CreateQuestNpcById(7181802, npcs.Npc213801Data.id, 1)
end

function Quest71818:creatwxiaobaiagain()
    print("creatwxiaobaiagain")
    self:CreateQuestNpcById(7181807, npcs.Npc213801Data.id, 1)
end

function Quest71818:OnSubStart7181811(arg1)
    print("OnSubStart7181811")
end

function Quest71818:OnSubFinish7181811(arg1)
    print("OnSubFinish7181811")
end

function Quest71818:OnSubFailed7181811(arg1)
    print("OnSubFailed7181811")
end

function Quest71818:OnSubStart7181801(arg1)
    print("OnSubStart7181801")
    self:NotifyTo("Npc2138", 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc213801Data.id, 1)
end

function Quest71818:OnSubFinish7181801(arg1)
    print("OnSubFinish7181801")
end

function Quest71818:OnSubFailed7181801(arg1)
    print("OnSubFailed7181801")
end

function Quest71818:OnSubStart7181802(arg1)
    print("OnSubStart7181802")
    self:NotifyTo("Npc2138", 1, true)
    self:NotifyTo("Npc2137", 1, true)
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.createxiaobai, nil, nil, "")
    self:CreateQuestNpc(arg1, npcs.Npc213701Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc213801Data.alias):EnableHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc213701Data.alias):EnableHeadCtrl(false)
end

function Quest71818:OnSubFinish7181802(arg1)
    print("OnSubFinish7181802")
end

function Quest71818:OnSubFailed7181802(arg1)
    print("OnSubFailed7181802")
end

function Quest71818:OnSubStart7181803(arg1)
    print("OnSubStart7181803")
    self:NotifyTo("Npc2138", 1, true)
    self:NotifyTo("Npc2137", 1, true)
    self:GetQuestNpcActor(npcs.Npc213801Data.alias):EnableHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc213701Data.alias):EnableHeadCtrl(false)
end

function Quest71818:OnSubFinish7181803(arg1)
    print("OnSubFinish7181803")
    self:NarratorOnlyTask(datas.NarratorTable, nil, "")
end

function Quest71818:OnSubFailed7181803(arg1)
    print("OnSubFailed7181803")
end

function Quest71818:OnSubStart7181804(arg1)
    print("OnSubStart7181804")
    self:NotifyTo("Npc2138", 1, true)
    self:NotifyTo("Npc2137", 1, true)
    self:GetQuestNpcActor(npcs.Npc213801Data.alias):EnableHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc213701Data.alias):EnableHeadCtrl(false)
end

function Quest71818:OnSubFinish7181804(arg1)
    print("OnSubFinish7181804")
end

function Quest71818:OnSubFailed7181804(arg1)
    print("OnSubFailed7181804")
end

function Quest71818:OnSubStart7181805(arg1)
    print("OnSubStart7181805")
    self:UnSpawn(gadgets.Gadget70710273Data.alias)
    self:NotifyTo("Npc2138", 1, true)
    self:NotifyTo("Npc2137", 1, true)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710273Data.id, 1, 0)
    self:GetQuestNpcActor(npcs.Npc213801Data.alias):EnableHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc213701Data.alias):EnableHeadCtrl(false)
end

function Quest71818:OnSubFinish7181805(arg1)
    print("OnSubFinish7181805")
    self:UnSpawn(gadgets.Gadget70710273Data.alias)
end

function Quest71818:OnSubFailed7181805(arg1)
    print("OnSubFailed7181805")
end

function Quest71818:OnSubStart7181806(arg1)
    print("OnSubStart7181806")
    self:NotifyTo("Npc2138", 1, true)
    self:NotifyTo("Npc2137", 1, true)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc213801Data.alias)
    questNpcActor:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q71818target").rot))
    local v = self:GetQuestNpcActor(npcs.Npc213701Data.alias)
    v:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q71818target").rot))
    questNpcActor:EnableHeadCtrl(false)
    v:EnableHeadCtrl(false)
end

function Quest71818:OnSubFinish7181806(arg1)
    print("OnSubFinish7181806")
end

function Quest71818:OnSubFailed7181806(arg1)
    print("OnSubFailed7181806")
end

function Quest71818:OnSubStart7181807(arg1)
    print("OnSubStart7181807")
    self:NotifyTo("Npc2138", 1, true)
    self:NotifyTo("Npc2137", 1, true)
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.creatwxiaobaiagain, nil, nil, "")
    self:GetQuestNpcActor(npcs.Npc213801Data.alias):EnableHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc213701Data.alias):EnableHeadCtrl(true)
end

function Quest71818:OnSubFinish7181807(arg1)
    print("OnSubFinish7181807")
    self:SafeDestroyQuestNpc(npcs.Npc213701Data.alias, 3)
    self:NotifyTo("Npc2137", 0, true)
end

function Quest71818:OnSubFailed7181807(arg1)
    print("OnSubFailed7181807")
end

function Quest71818:OnSubStart7181808(arg1)
    print("OnSubStart7181808")
    self:NotifyTo("Npc2138", 1, true)
    self:GetQuestNpcActor(npcs.Npc213801Data.alias):EnableHeadCtrl(true)
end

function Quest71818:OnSubFinish7181808(arg1)
    print("OnSubFinish7181808")
end

function Quest71818:OnSubFailed7181808(arg1)
    print("OnSubFailed7181808")
end

function Quest71818:OnSubStart7181809(arg1)
    print("OnSubStart7181809")
    self:NotifyTo("Npc2138", 1, true)
    self:GetQuestNpcActor(npcs.Npc213801Data.alias):EnableHeadCtrl(true)
end

function Quest71818:OnSubFinish7181809(arg1)
    print("OnSubFinish7181809")
end

function Quest71818:OnSubFailed7181809(arg1)
    print("OnSubFailed7181809")
end

function Quest71818:OnSubStart7181810(arg1)
    print("OnSubStart7181810")
    self:NotifyTo("Npc2138", 1, true)
    self:ActionSafeCall(self.interaction)
    self:GetQuestNpcActor(npcs.Npc213801Data.alias):EnableHeadCtrl(true)
end

function Quest71818:OnSubFinish7181810(arg1)
    print("OnSubFinish7181810")
    self:ShowBlackScreen(0.5, 1, 0.5, self.destroyxiaobai, nil, nil, "")
    self:NotifyTo("Npc2138", 0, true)
end

function Quest71818:OnSubFailed7181810(arg1)
    print("OnSubFailed7181810")
end

return Quest71818
