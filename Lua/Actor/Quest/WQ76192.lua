require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76192 = class("Quest76192", QuestActorProxy)
Quest76192.defaultAlias = "Quest76192"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest76192:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76192:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7619201"] = self.OnSubStart7619201,
        ["7619202"] = self.OnSubStart7619202,
        ["7619203"] = self.OnSubStart7619203,
        ["7619204"] = self.OnSubStart7619204,
        ["7619205"] = self.OnSubStart7619205
    }
end

function Quest76192:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7619201"] = self.OnSubFinish7619201,
        ["7619202"] = self.OnSubFinish7619202,
        ["7619203"] = self.OnSubFinish7619203,
        ["7619204"] = self.OnSubFinish7619204,
        ["7619205"] = self.OnSubFinish7619205
    }
end

function Quest76192:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7619204"] = self.OnSubFailed7619204}
end

function Quest76192:Start()
    print("Start")
end

function Quest76192:OnDestroy()
    print("OnDestroy")
end

function Quest76192:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76192:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76192:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76192:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7619205_TalkTrigger", 76192)
end

function Quest76192:ActorDestroy(arg1, arg2)
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

function Quest76192:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest76192:OnSubStart7619201(arg1)
    print("OnSubStart7619201")
end

function Quest76192:OnSubFinish7619201(arg1)
    print("OnSubFinish7619201")
end

function Quest76192:OnSubStart7619202(arg1)
    print("OnSubStart7619202")
    this:CreateQuestNpc(arg1, npcs.Npc16562.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16573.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7088.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7088.alias, 76192):DoFreeStyle(1160, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc16573.alias, 76192):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc16573.alias, 76192):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc7088.alias, 76192):DisableInteeHeadCtrl(true)
end

function Quest76192:OnSubFinish7619202(arg1)
    print("OnSubFinish7619202")
    this:NpcDestroyImmediately(3, npcs.Npc16562.alias)
end

function Quest76192:OnSubStart7619203(arg1)
    print("OnSubStart7619203")
    this:CreateQuestNpc(arg1, npcs.Npc16573.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7088.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7088.alias, 76192):DoFreeStyle(1160, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc16573.alias, 76192):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc16573.alias, 76192):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc7088.alias, 76192):DisableInteeHeadCtrl(true)
end

function Quest76192:OnSubFinish7619203(arg1)
    print("OnSubFinish7619203")
    this:GetQuestNpcActor(npcs.Npc16573.alias, 76192):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc7088.alias, 76192):DisableInteeHeadCtrl(false)
end

function Quest76192:OnSubStart7619204(arg1)
    print("OnSubStart7619204")
    this:CreateQuestNpc(arg1, npcs.Npc16573.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7088.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16704.id, 0, false, 0)
    this:RequestInteraction(npcs.Npc16704.alias, "", true)
end

function Quest76192:OnSubFinish7619204(arg1)
    print("OnSubFinish7619204")
    this:NpcDestroyImmediately(3, npcs.Npc16704.alias)
end

function Quest76192:OnSubFailed7619204(arg1)
    print("OnSubFailed7619204")
    this:RecycleAllRes()
end

function Quest76192:OnSubStart7619205(arg1)
    print("OnSubStart7619205")
    this:CreateQuestNpc(arg1, npcs.Npc16573.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7088.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7619205_TalkTrigger", "Actor/Gadget/Q7619205_TalkTrigger", 70900002, 0, points._Q7619205_TalkTriggerPoint_.pos, points._Q7619205_TalkTriggerPoint_.rot, true, false, 3, nil, 0, 76192)
end

function Quest76192:OnSubFinish7619205(arg1)
    print("OnSubFinish7619205")
    this:NpcDestroyImmediately(3, npcs.Npc16573.alias)
    this:NpcDestroyImmediately(3, npcs.Npc7088.alias)
    this:CallDelayByQuest("Q7619205_Delay", 2, function(arg1)
        this:AfterMainPageActiveSafeCall(function(arg1)
            actorUtils.SimpleUIShowForLua(false, "NaturalistHandbook", "", nil)
        end)
    end)
end

return Quest76192
