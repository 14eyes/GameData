require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73319 = class("Quest73319", QuestActorProxy)
Quest73319.defaultAlias = "Quest73319"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73319:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73319:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7331901"] = self.OnSubStart7331901,
        ["7331910"] = self.OnSubStart7331910,
        ["7331902"] = self.OnSubStart7331902,
        ["7331903"] = self.OnSubStart7331903,
        ["7331904"] = self.OnSubStart7331904,
        ["7331905"] = self.OnSubStart7331905,
        ["7331906"] = self.OnSubStart7331906,
        ["7331911"] = self.OnSubStart7331911,
        ["7331907"] = self.OnSubStart7331907,
        ["7331908"] = self.OnSubStart7331908,
        ["7331909"] = self.OnSubStart7331909,
        ["7331921"] = self.OnSubStart7331921,
        ["7331923"] = self.OnSubStart7331923,
        ["7331912"] = self.OnSubStart7331912,
        ["7331913"] = self.OnSubStart7331913,
        ["7331914"] = self.OnSubStart7331914,
        ["7331915"] = self.OnSubStart7331915,
        ["7331922"] = self.OnSubStart7331922,
        ["7331924"] = self.OnSubStart7331924,
        ["7331916"] = self.OnSubStart7331916,
        ["7331917"] = self.OnSubStart7331917,
        ["7331918"] = self.OnSubStart7331918,
        ["7331919"] = self.OnSubStart7331919
    }
end

function Quest73319:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7331901"] = self.OnSubFinish7331901,
        ["7331910"] = self.OnSubFinish7331910,
        ["7331902"] = self.OnSubFinish7331902,
        ["7331903"] = self.OnSubFinish7331903,
        ["7331904"] = self.OnSubFinish7331904,
        ["7331905"] = self.OnSubFinish7331905,
        ["7331906"] = self.OnSubFinish7331906,
        ["7331911"] = self.OnSubFinish7331911,
        ["7331907"] = self.OnSubFinish7331907,
        ["7331908"] = self.OnSubFinish7331908,
        ["7331909"] = self.OnSubFinish7331909,
        ["7331921"] = self.OnSubFinish7331921,
        ["7331923"] = self.OnSubFinish7331923,
        ["7331912"] = self.OnSubFinish7331912,
        ["7331913"] = self.OnSubFinish7331913,
        ["7331914"] = self.OnSubFinish7331914,
        ["7331915"] = self.OnSubFinish7331915,
        ["7331922"] = self.OnSubFinish7331922,
        ["7331924"] = self.OnSubFinish7331924,
        ["7331916"] = self.OnSubFinish7331916,
        ["7331917"] = self.OnSubFinish7331917,
        ["7331918"] = self.OnSubFinish7331918,
        ["7331919"] = self.OnSubFinish7331919
    }
end

function Quest73319:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7331903"] = self.OnSubFailed7331903,
        ["7331908"] = self.OnSubFailed7331908,
        ["7331914"] = self.OnSubFailed7331914,
        ["7331918"] = self.OnSubFailed7331918
    }
end

function Quest73319:Start()
    print("Start")
end

function Quest73319:OnDestroy()
    print("OnDestroy")
end

function Quest73319:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73319:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73319:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73319:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest73319:_73319_Count_Down_Finish()
    print("_73319_Count_Down_Finish")
    self:FinishQuestID(false, 7331902)
    self:FinishQuestID(false, 7331907)
    self:FinishQuestID(false, 7331913)
    self:FinishQuestID(false, 7331917)
end

function Quest73319:_73319_Enable_Input()
    print("_73319_Enable_Input")
    this:EnablePlayerInput(true)
end

function Quest73319:OnSubStart7331901(arg1)
    print("OnSubStart7331901")
    this:CreateQuestNpc(arg1, npcs.Npc20968Data.id, 1)
end

function Quest73319:OnSubFinish7331901(arg1)
    print("OnSubFinish7331901")
end

function Quest73319:OnSubStart7331910(arg1)
    print("OnSubStart7331910")
end

function Quest73319:OnSubFinish7331910(arg1)
    print("OnSubFinish7331910")
    this:ShowBlackScreenWithDialogText(0.3, 1, 0.3, nil, nil, nil, 0, false, true)
    this:TransmitPlayerById(arg1, 1)
end

function Quest73319:OnSubStart7331902(arg1)
    print("OnSubStart7331902")
    this:CallDelay(4, self._73319_Enable_Input)
    this:EnablePlayerInput(false)
    this:CountDownUIStart(0, 0, 3)
    this:CallDelay(4, self._73319_Count_Down_Finish)
end

function Quest73319:OnSubFinish7331902(arg1)
    print("OnSubFinish7331902")
end

function Quest73319:OnSubStart7331903(arg1)
    print("OnSubStart7331903")
end

function Quest73319:OnSubFinish7331903(arg1)
    print("OnSubFinish7331903")
    this:CallDelay(1, function(arg1_2)
        this:TransmitPlayerWithDialogTextById(arg1, 2, datas.DialogsId, 3, nil, nil)
    end)
end

function Quest73319:OnSubFailed7331903(arg1)
    print("OnSubFailed7331903")
    this:CallDelay(1, function(arg1_2)
        this:TransmitPlayerWithDialogTextById(arg1, 2, datas.DialogsId, 3, nil, nil)
    end)
end

function Quest73319:OnSubStart7331904(arg1)
    print("OnSubStart7331904")
end

function Quest73319:OnSubFinish7331904(arg1)
    print("OnSubFinish7331904")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20968Data.alias)
end

function Quest73319:OnSubStart7331905(arg1)
    print("OnSubStart7331905")
end

function Quest73319:OnSubFinish7331905(arg1)
    print("OnSubFinish7331905")
end

function Quest73319:OnSubStart7331906(arg1)
    print("OnSubStart7331906")
    this:CreateQuestNpc(arg1, npcs.Npc20968Data.id, 1)
end

function Quest73319:OnSubFinish7331906(arg1)
    print("OnSubFinish7331906")
end

function Quest73319:OnSubStart7331911(arg1)
    print("OnSubStart7331911")
end

function Quest73319:OnSubFinish7331911(arg1)
    print("OnSubFinish7331911")
    this:ShowBlackScreenWithDialogText(0.3, 1, 0.3, nil, nil, nil, 0, false, true)
    this:TransmitPlayerById(arg1, 1)
end

function Quest73319:OnSubStart7331907(arg1)
    print("OnSubStart7331907")
    this:CallDelay(4, self._73319_Enable_Input)
    this:EnablePlayerInput(false)
    this:CountDownUIStart(0, 0, 3)
    this:CallDelay(4, self._73319_Count_Down_Finish)
end

function Quest73319:OnSubFinish7331907(arg1)
    print("OnSubFinish7331907")
end

function Quest73319:OnSubStart7331908(arg1)
    print("OnSubStart7331908")
end

function Quest73319:OnSubFinish7331908(arg1)
    print("OnSubFinish7331908")
    this:CallDelay(1, function(arg1_2)
        this:TransmitPlayerWithDialogTextById(arg1, 2, datas.DialogsId, 3, nil, nil)
    end)
end

function Quest73319:OnSubFailed7331908(arg1)
    print("OnSubFailed7331908")
    this:CallDelay(1, function(arg1_2)
        this:TransmitPlayerWithDialogTextById(arg1, 2, datas.DialogsId, 3, nil, nil)
    end)
end

function Quest73319:OnSubStart7331909(arg1)
    print("OnSubStart7331909")
end

function Quest73319:OnSubFinish7331909(arg1)
    print("OnSubFinish7331909")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20968Data.alias)
end

function Quest73319:OnSubStart7331921(arg1)
    print("OnSubStart7331921")
end

function Quest73319:OnSubFinish7331921(arg1)
    print("OnSubFinish7331921")
end

function Quest73319:OnSubStart7331923(arg1)
    print("OnSubStart7331923")
    this:CreateQuestNpc(arg1, npcs.Npc20968Data.id, 1)
end

function Quest73319:OnSubFinish7331923(arg1)
    print("OnSubFinish7331923")
end

function Quest73319:OnSubStart7331912(arg1)
    print("OnSubStart7331912")
end

function Quest73319:OnSubFinish7331912(arg1)
    print("OnSubFinish7331912")
    this:ShowBlackScreenWithDialogText(0.3, 1, 0.3, nil, nil, nil, 0, false, true)
    this:TransmitPlayerById(arg1, 1)
end

function Quest73319:OnSubStart7331913(arg1)
    print("OnSubStart7331913")
    this:CallDelay(4, self._73319_Enable_Input)
    this:EnablePlayerInput(false)
    this:CountDownUIStart(0, 0, 3)
    this:CallDelay(4, self._73319_Count_Down_Finish)
end

function Quest73319:OnSubFinish7331913(arg1)
    print("OnSubFinish7331913")
end

function Quest73319:OnSubStart7331914(arg1)
    print("OnSubStart7331914")
end

function Quest73319:OnSubFinish7331914(arg1)
    print("OnSubFinish7331914")
    this:CallDelay(1, function(arg1_2)
        this:TransmitPlayerWithDialogTextById(arg1, 2, datas.DialogsId, 3, nil, nil)
    end)
end

function Quest73319:OnSubFailed7331914(arg1)
    print("OnSubFailed7331914")
    this:CallDelay(1, function(arg1_2)
        this:TransmitPlayerWithDialogTextById(arg1, 2, datas.DialogsId, 3, nil, nil)
    end)
end

function Quest73319:OnSubStart7331915(arg1)
    print("OnSubStart7331915")
end

function Quest73319:OnSubFinish7331915(arg1)
    print("OnSubFinish7331915")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20968Data.alias)
end

function Quest73319:OnSubStart7331922(arg1)
    print("OnSubStart7331922")
end

function Quest73319:OnSubFinish7331922(arg1)
    print("OnSubFinish7331922")
end

function Quest73319:OnSubStart7331924(arg1)
    print("OnSubStart7331924")
    this:CreateQuestNpc(arg1, npcs.Npc20968Data.id, 1)
end

function Quest73319:OnSubFinish7331924(arg1)
    print("OnSubFinish7331924")
end

function Quest73319:OnSubStart7331916(arg1)
    print("OnSubStart7331916")
end

function Quest73319:OnSubFinish7331916(arg1)
    print("OnSubFinish7331916")
    this:ShowBlackScreenWithDialogText(0.3, 1, 0.3, nil, nil, nil, 0, false, true)
    this:TransmitPlayerById(arg1, 1)
end

function Quest73319:OnSubStart7331917(arg1)
    print("OnSubStart7331917")
    this:CallDelay(4, self._73319_Enable_Input)
    this:EnablePlayerInput(false)
    this:CountDownUIStart(0, 0, 3)
    this:CallDelay(4, self._73319_Count_Down_Finish)
end

function Quest73319:OnSubFinish7331917(arg1)
    print("OnSubFinish7331917")
end

function Quest73319:OnSubStart7331918(arg1)
    print("OnSubStart7331918")
end

function Quest73319:OnSubFinish7331918(arg1)
    print("OnSubFinish7331918")
    this:CallDelay(1, function(arg1_2)
        this:TransmitPlayerWithDialogTextById(arg1, 2, datas.DialogsId_01, 3, nil, nil)
    end)
end

function Quest73319:OnSubFailed7331918(arg1)
    print("OnSubFailed7331918")
    this:CallDelay(1, function(arg1_2)
        this:TransmitPlayerWithDialogTextById(arg1, 2, datas.DialogsId, 3, nil, nil)
    end)
end

function Quest73319:OnSubStart7331919(arg1)
    print("OnSubStart7331919")
end

function Quest73319:OnSubFinish7331919(arg1)
    print("OnSubFinish7331919")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20968Data.alias)
end

return Quest73319
