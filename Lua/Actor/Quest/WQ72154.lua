require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72154 = class("Quest72154", QuestActorProxy)
Quest72154.defaultAlias = "Quest72154"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72154:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72154:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7215401"] = self.OnSubStart7215401,
        ["7215405"] = self.OnSubStart7215405,
        ["7215402"] = self.OnSubStart7215402,
        ["7215404"] = self.OnSubStart7215404,
        ["7215403"] = self.OnSubStart7215403
    }
end

function Quest72154:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7215401"] = self.OnSubFinish7215401,
        ["7215405"] = self.OnSubFinish7215405,
        ["7215402"] = self.OnSubFinish7215402,
        ["7215404"] = self.OnSubFinish7215404,
        ["7215403"] = self.OnSubFinish7215403
    }
end

function Quest72154:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7215401"] = self.OnSubFailed7215401,
        ["7215405"] = self.OnSubFailed7215405,
        ["7215402"] = self.OnSubFailed7215402,
        ["7215404"] = self.OnSubFailed7215404,
        ["7215403"] = self.OnSubFailed7215403
    }
end

function Quest72154:Start()
    print("Start")
end

function Quest72154:OnDestroy()
    print("OnDestroy")
end

function Quest72154:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72154:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72154:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72154:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        print("invoke1")
        self:ShowReadingDialog(100905)
    end
end

function Quest72154:DestroyNPC()
    print("DestroyNPC")
    self:SafeDestroyQuestNpc(npcs.Npc3162Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3185Data.alias, 3)
end

function Quest72154:OnSubStart7215401(arg1)
    print("OnSubStart7215401")
    actorMgr:GetActor("Npc3162"):DisableInteeHeadCtrl(true)
    actorMgr:GetActor("Npc3185"):DisableInteeHeadCtrl(true)
end

function Quest72154:OnSubFinish7215401(arg1)
    print("OnSubFinish7215401")
    actorMgr:GetActor("Npc3162"):DisableInteeHeadCtrl(false)
    actorMgr:GetActor("Npc3185"):DisableInteeHeadCtrl(false)
end

function Quest72154:OnSubFailed7215401(arg1)
    print("OnSubFailed7215401")
end

function Quest72154:OnSubStart7215405(arg1)
    print("OnSubStart7215405")
end

function Quest72154:OnSubFinish7215405(arg1)
    print("OnSubFinish7215405")
end

function Quest72154:OnSubFailed7215405(arg1)
    print("OnSubFailed7215405")
end

function Quest72154:OnSubStart7215402(arg1)
    print("OnSubStart7215402")
    self:TransmitPlayerWithTextByQuestId(7215402, 7215402, datas.TextmapId, 2)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc3162Data.id, 1)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc3185Data.id, 2)
    end)
end

function Quest72154:OnSubFinish7215402(arg1)
    print("OnSubFinish7215402")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest72154:OnSubFailed7215402(arg1)
    print("OnSubFailed7215402")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest72154:OnSubStart7215404(arg1)
    print("OnSubStart7215404")
end

function Quest72154:OnSubFinish7215404(arg1)
    print("OnSubFinish7215404")
end

function Quest72154:OnSubFailed7215404(arg1)
    print("OnSubFailed7215404")
end

function Quest72154:OnSubStart7215403(arg1)
    print("OnSubStart7215403")
end

function Quest72154:OnSubFinish7215403(arg1)
    print("OnSubFinish7215403")
    self:ShowBlackScreen(0.5, 1, 0.5, self.DestroyNPC, nil, nil, "", false, true)
end

function Quest72154:OnSubFailed7215403(arg1)
    print("OnSubFailed7215403")
end

return Quest72154
